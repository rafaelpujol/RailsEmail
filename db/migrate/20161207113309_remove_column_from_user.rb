class RemoveColumnFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :Username, :string
    remove_column :users, :Password, :string
    remove_column :users, :CreateDate, :string
    remove_column :users, :Active, :string
  end
end
