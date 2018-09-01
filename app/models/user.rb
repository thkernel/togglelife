class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile, dependent: :destroy

  # For FriendlyID
	#extend FriendlyId
	#friendly_id :login, use: :slugged
  
  # Add nested attributes for profile.
  accepts_nested_attributes_for :profile

end
