class Mail < ApplicationRecord
validates :to, presence: true
validates :subject, presence: true, length: {minimum: 3}
validates :body, presence: true, length: {minimum: 10}



  before_create :set_create_date

  private

  def set_create_date
    self.create_date = Date.current
    #self.from = current_user.email
    self.erase = false
  end
end
