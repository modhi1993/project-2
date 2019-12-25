class Haul < ApplicationRecord
    has_many :comments , dependent: :destroy
    has_many :users, through: :comments
    belongs_to :user
    belongs_to :city
    validates :subject, :store_name,  :product_image, :discreption, presence: true
end
