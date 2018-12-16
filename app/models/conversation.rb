# == Schema Information
#
# Table name: conversations
#
#  id           :bigint(8)        not null, primary key
#  sender_id    :bigint(8)        not null
#  recipient_id :bigint(8)        not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Conversation < ActiveRecord::Base
	belongs_to :sender, :foreign_key => "sender_id", :class_name => "User"
 	belongs_to :recipient, :foreign_key => "recipient_id", :class_name => "User"
	
	has_many :messages, dependent: :destroy

	validates_uniqueness_of :sender_id, :scope => :recipient_id


	private
	def self.get_conversation(user_id)
		where("recipient_id = ? ",user_id)
	end

	def self.current_user_conversations(user_id)
		where("recipient_id = ? OR sender_id = ? ",user_id, user_id)
	end

	# Scope to check reciproque connectivity
	scope :between, -> (sender_id,recipient_id) do
 		where("(conversations.sender_id = ? AND conversations.recipient_id =?) OR (conversations.sender_id = ? AND conversations.recipient_id =?)", sender_id,recipient_id, recipient_id, sender_id)
 	end


end
