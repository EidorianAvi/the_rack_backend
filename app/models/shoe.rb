class Shoe < ApplicationRecord
    validates :name, :brand, :gender, :retail_price, :colors, :title, :image, presence: true

    has_many :user_shoes
    has_many :shoes, through: :users_shoes
end
