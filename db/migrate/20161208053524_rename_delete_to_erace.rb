class RenameDeleteToErace < ActiveRecord::Migration[5.0]
  def change
    rename_column :mails, :delete, :erase
  end

end
