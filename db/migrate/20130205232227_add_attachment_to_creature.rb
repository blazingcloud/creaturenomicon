class AddAttachmentToCreature < ActiveRecord::Migration
  def change
    add_column :creatures, :attachment, :string
  end
end
