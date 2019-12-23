class Haul < ApplicationRecord
    has_many :comments , dependent: :destroy
    belongs_to :user
    validates :subject, :store_name,  :product_image, :discreption, presence: true
end
