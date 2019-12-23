class City < ApplicationRecord
  has_many :hauls , dependent: :destroy
  
end
