# == Schema Information
#
# Table name: messages
#
#  id              :bigint(8)        not null, primary key
#  body            :text             not null
#  read            :boolean          default(FALSE)
#  conversation_id :bigint(8)        not null
#  user_id         :bigint(8)        not null
#  send_at         :datetime
#  read_at         :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Message < ActiveRecord::Base

    belongs_to :conversation
    belongs_to :user
    validates_presence_of :body, :conversation_id
   
   private
    def self.conversation_messages(conversation_id)
        where("conversation_id = ? ",conversation_id)
    end
   
   
   end
