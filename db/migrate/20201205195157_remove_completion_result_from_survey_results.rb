class RemoveCompletionResultFromSurveyResults < ActiveRecord::Migration[6.0]
  def change
    remove_column :survey_results, :completion_result, :string
  end
end
