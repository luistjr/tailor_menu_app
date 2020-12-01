class CreateLifestyles < ActiveRecord::Migration[6.0]
  def change
    create_table :lifestyles do |t|
      t.string :category
      t.integer :survey_id

      t.timestamps
    end
  end
end
