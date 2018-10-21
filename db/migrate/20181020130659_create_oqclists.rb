class CreateOqclists < ActiveRecord::Migration[5.2]
  def change
    create_table :oqclists do |t|
      t.string :lotno
      t.integer :quantity

      t.timestamps
    end
  end
end
