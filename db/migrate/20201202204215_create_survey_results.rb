class CreateSurveyResults < ActiveRecord::Migration[6.0]
  def change
    create_table :survey_results do |t|
      t.string :completion_result
      t.integer :lifestyle_id
      t.integer :user_id

      t.timestamps
    end
  end
end
