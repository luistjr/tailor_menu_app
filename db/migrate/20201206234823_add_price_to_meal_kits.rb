class AddPriceToMealKits < ActiveRecord::Migration[6.0]
  def change
    add_column :meal_kits, :price, :string
  end
end
