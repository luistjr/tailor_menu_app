class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :ready_in_minutes
      t.string :source_url
      t.string :image
      t.string :summary
      t.integer :lifestyle_id

      t.timestamps
    end
  end
end
