class CreateTenders < ActiveRecord::Migration
  def up
    create_table :tenders do |t|
      t.string :text
      t.timestamps null: false
    end
    add_attachment :tenders, :file
  end

  def down
    remove_attachment :tenders, :file
    drop_table :tenders
  end
end
