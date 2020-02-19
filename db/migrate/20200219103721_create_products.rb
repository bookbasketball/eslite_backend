class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :list_price
      t.decimal :sale_price
      t.integer :sku
      t.text :description
      t.string :image
      t.string :state

      t.timestamps
    end
  end
end
