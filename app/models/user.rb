class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :hauls, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one :profile, dependent: :destroy
  after_create :create_profile

  private
  def create_profile
    Profile.create(user: self)
  end
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
