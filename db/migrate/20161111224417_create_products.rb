class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :quantity
      t.string :description
      t.string :brand
      t.string :category
      t.belongs_to :user



      t.timestamps
    end
  end
end
