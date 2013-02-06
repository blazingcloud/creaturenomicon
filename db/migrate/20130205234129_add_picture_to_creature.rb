class AddPictureToCreature < ActiveRecord::Migration
  def change
    add_column :creatures, :picture, :string
  end
end
