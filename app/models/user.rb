class User < ApplicationRecord
    has_many :survey_results
    has_one :lifestyle, through: :survey_result
end
