class Message < ActiveRecord::Base

    belongs_to :conversation
    belongs_to :user
    validates_presence_of :body, :conversation_id
   
   private
    def self.conversation_messages(conversation_id)
        where("conversation_id = ? ",conversation_id)
    end
   
   
   end