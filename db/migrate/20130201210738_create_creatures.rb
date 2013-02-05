class CreateCreatures < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.string :name, :null => false
      t.text :description, :null => false
      t.string :habitat, :null => false
      t.string :type

      t.timestamps
    end
  end
end
