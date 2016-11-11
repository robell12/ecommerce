class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :electronics
      t.string :furniture
      t.string :garden
      t.string :outdoors

      t.timestamps
    end
  end
end
