class AddFieldToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string
    add_column :users, :title, :string
    add_column :users, :experience_level, :string
    add_column :users, :territory, :string

  end
end
