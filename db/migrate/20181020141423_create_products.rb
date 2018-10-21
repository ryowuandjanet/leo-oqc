class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :model
      t.string :partno
      t.integer :oqclist_id

      t.timestamps
    end
    add_index :products, :oqclist_id
  end
end
