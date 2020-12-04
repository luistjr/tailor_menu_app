class User < ApplicationRecord
    has_many :survey_results
    has_many :lifestyles, through: :survey_results

    has_secure_password

    validates :username, uniqueness: { case_sensitive: false }
    validates :email, uniqueness: { case_sensitive: false }
    validates_presence_of :username, :email, :password

    
end
