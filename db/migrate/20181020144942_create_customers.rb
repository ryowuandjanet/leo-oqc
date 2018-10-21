class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name

      t.timestamps
    end
    add_column :oqclists, :customer_id, :integer
    add_index :oqclists, :customer_id
  end
end
