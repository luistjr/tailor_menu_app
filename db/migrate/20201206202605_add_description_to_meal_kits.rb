class AddDescriptionToMealKits < ActiveRecord::Migration[6.0]
  def change
    add_column :meal_kits, :description, :string
  end
end
