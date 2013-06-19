class AddUserToTrip < ActiveRecord::Migration
  def up
    add_column :trips, :user_id, :integer
  end
  def down
      remove_column :trips, :user_id
    end
end
