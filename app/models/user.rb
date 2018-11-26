class User < ApplicationRecord
  before_create :generate_random_id
 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:confirmable, :lockable, :timeoutable, :trackable, :omniauthable

  has_one :profile, dependent: :destroy

  # For FriendlyID
	#extend FriendlyId
	#friendly_id :login, use: :slugged
  
  # Add nested attributes for profile.
  accepts_nested_attributes_for :profile

  SEXE = [["Femme"], ["Homme"]]
  



  has_many :messages, :dependent => :destroy
  #has_many :notifications, :dependent => :destroy

  # Les conversations  où ce membre est le Sender (1)
  has_many :conversations_as_sender, :class_name => "Conversation", :foreign_key => :sender_id

  # Les conversations  où ce membre est le Recipient (2)
  has_many :conversations_as_recipient, :class_name => "Conversation", :foreign_key => :recipient_id
  #has_many :conversations, :foreign_key => "sender_id", :class_name => "Conversation"

#def to_param
  #{}"#{id} #{pseudo}".parameterize
#end


def self.find_user_by_slug(slug)
  where("slug = ? ", "#{slug}")
end

 private 
 def generate_random_id
    begin
    self.slug = "u#{SecureRandom.random_number(1_000_000_000)}"
    end while User.where(slug: self.slug).exists?
 end 

 



  

end
