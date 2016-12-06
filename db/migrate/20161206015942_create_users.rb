class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :Username
      t.string :Password
      t.datetime :CreateDate
      t.boolean :Active

      t.timestamps null: false
    end
  end
end
