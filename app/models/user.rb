# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  login                  :string
#  slug                   :string
#  status                 :string           default("Enabled"), not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

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
  MARITAL_STATUS = [["Célibataire"], ["Marié(e)"], ["Divorcé(e)"], ["Veuve"], ["Veuf"]]
  SEXUAL_ORIENTATION = [["Hétéro-sexuel(le)"], ["Homo-sexuel(le)"], ["Bi-sexuel(le)"]]
  PURPOSE = [["Flirt"], ["Sexe"]]


  has_many :messages, :dependent => :destroy
  #has_many :notifications, :dependent => :destroy

  # Les conversations  où ce membre est le Sender (1)
  #has_many :conversations_as_sender, :class_name => "Conversation", :foreign_key => :sender_id
  has_many :own_conversations, :class_name => "Conversation", :foreign_key => :sender_id

  # Les conversations  où ce membre est le Recipient (2)
  #has_many :conversations_as_recipient, :class_name => "Conversation", :foreign_key => :recipient_id

  has_many :foreign_conversations, :class_name => "Conversation", :foreign_key => :recipient_id
  #has_many :conversations, :foreign_key => "sender_id", :class_name => "Conversation"

  
  # Validations
  validates :login, presence: true, uniqueness: true

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
