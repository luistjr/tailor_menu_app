class User < ApplicationRecord
    has_many :survey_results
    has_many :lifestyles, through: :survey_results
end
