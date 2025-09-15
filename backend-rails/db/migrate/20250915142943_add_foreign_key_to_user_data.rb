class AddForeignKeyToUserData < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :user_data, :users
  end
end
