class CreateOqcitems < ActiveRecord::Migration[5.2]
  def change
    create_table :oqcitems do |t|
      t.string :inspector
      t.integer :oqclist_id
      t.timestamps
    end
    add_index :oqcitems, :oqclist_id
  end
end
