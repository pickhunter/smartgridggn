class CreateUpdates < ActiveRecord::Migration
  def up
    create_table :updates do |t|
      t.string :text

      t.timestamps null: false
    end
    add_attachment :updates, :file
  end

  def down
    remove_attachment :updates, :file
    drop_table :updates
  end
end