class AddFriendsToCreature < ActiveRecord::Migration
  def change
    add_column :creatures, :friends, :text
    add_column :creatures, :frienemies, :text
  end
end
