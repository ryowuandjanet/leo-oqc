class ChangeOqclistId < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :oqclist_id, :integer

    add_column :oqclists, :product_id, :integer
    add_index :oqclists, :product_id
  end
end
