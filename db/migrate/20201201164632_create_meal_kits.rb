class CreateMealKits < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_kits do |t|
      t.integer :lifestyle_id
      t.string :provider
      t.string :image
      t.string :url
      t.integer :price

      t.timestamps
    end
  end
end
