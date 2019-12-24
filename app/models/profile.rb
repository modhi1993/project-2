class Profile < ApplicationRecord
  has_one :city 
  has_one :user
end
