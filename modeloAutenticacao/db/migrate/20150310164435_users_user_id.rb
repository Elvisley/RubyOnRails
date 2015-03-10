class UsersUserId < ActiveRecord::Migration
  def change
  	add_column :carros , :user_id , :integer
  end
end
