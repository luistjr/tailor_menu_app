class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :content
      t.string :string
      t.integer :lifestyle_id

      t.timestamps
    end
  end
end
