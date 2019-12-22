class Haul < ApplicationRecord
    belongs_to :user
    validates :subject, :store_name, :city_name, :product_image, :discreption, presence: true
end
