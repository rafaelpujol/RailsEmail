class MailsController < ApplicationController

  before_action :authenticate_user!
  def index
    @mails  = Mail.where('"to"' + "  LIKE ? AND erase = ?", '%' + current_user.email + '%', false).order('create_date DESC')

  end


  def sent

    @mails  = Mail.where('"from"' +"LIKE ? AND erase = ?", '%' + current_user.email + '%', false ).order('create_date DESC')
  end

  def erase


    @mails  = Mail.where('("from"' + 'LIKE ? or '+ '"to"' + ' LIKE  ?) AND erase = ? ', '%' + current_user.email + '%','%' +
                         current_user.email + '%', true ).order('create_date DESC')
  end


  def show
     @mail = Mail.find(params[:id])
     @mail.read_mail
  end


  def new
     @mail = Mail.new
  end

  #post new

  def create
      @mail = Mail.new(mail_params)
      @mail.from = current_user.email
    if @mail.save
      redirect_back(fallback_location: root_path)
    else
      render :new
    end
  end

  def destroy
    @mail = Mail.find(params[:id])

    if(@mail.erase)
      @mail.destroy
    else
      @mail.update_attributes({erase:true})
    end
    redirect_back(fallback_location: root_path)
  end


  def update
    @mail = Mail.find(params[:id])

    redirect_to mail_path
  end


  private

  def mail_params
    params.require(:mail).permit(:to,:cc,:bcc,:subject,:body)

  end


end
