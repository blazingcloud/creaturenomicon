class DropTypeFromCreature < ActiveRecord::Migration
  def up
    add_column :creatures, :creature_type, :string
    remove_column :creatures, :type, :string
  end

  def down
    add_column :creatures, :type, :string
    remove_column :creatures, :creature_type, :string
  end
end
