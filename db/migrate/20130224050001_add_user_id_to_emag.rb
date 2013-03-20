class AddUserIdToEmag < ActiveRecord::Migration
  def change
  	add_column :emags, :user_id, :integer
  end
end
