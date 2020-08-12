class User < ApplicationRecord
    has_secure_password
    has_many :user_shoes
    has_many :shoes, through: :user_shoes

    validates :username, presence: true, uniqueness: true
end

