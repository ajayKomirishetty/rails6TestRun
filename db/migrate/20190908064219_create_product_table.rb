class CreateProductTable < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :lock_version
      t.timestamps
    end
  end
end
