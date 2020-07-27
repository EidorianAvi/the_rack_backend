class User < ApplicationRecord
    has_secure_password
    has_many :user_shoes
    has_many :shoes, through: :user_shoe
    
    validates :username, uniqueness: true
end

