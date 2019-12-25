class Profile < ApplicationRecord
  has_one :city 
  belongs_to :user
end
