class RemovePriceFromMealKits < ActiveRecord::Migration[6.0]
  def change
    remove_column :meal_kits, :price, :string
  end
end
