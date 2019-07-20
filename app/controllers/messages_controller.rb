class MessagesController < ApplicationController

	before_action :authenticate_user!
	before_action :set_recipient, only: [:new, :create]

	layout "profile"
	

	def index
		
		conversations = Conversation.current_user_conversations(current_user.id)
		@conversations_list = []

		conversations.each do |conversation|
			if conversation.sender_id != current_user.id 
				@conversations_list.push(User.find(conversation.sender_id))
			end
			if conversation.recipient_id != current_user.id 
				@conversations_list.push(User.find(conversation.recipient_id))
			end
		end

		 
		puts "CONVERSATIONS USERS: #{@conversations_list.inspect}"
	 	
	end

	def new
		
		@message = Message.new
	end

	
	# Show
	 def show
		@message = Message.new
		conversation = find_conversation(params[:id])

		if conversation.recipient_id != current_user.id 
			@recipient_id = conversation.recipient_id
		elsif conversation.sender_id != current_user.id 
			@recipient_id = conversation.sender_id
		end
 		@messages = conversation.messages	
	end

	def create
		puts "RECIPIENT INTERNE: #{params[:recipient_id]}"
		recipient_id = params[:recipient_id]
		@conversation = find_conversation(recipient_id) || Conversation.create(sender_id: current_user.id, recipient_id: recipient_id)
		puts "LA CONVERSATION: #{@conversation.inspect}"
		#Create message
		@message = @conversation.messages.build(message_params)
		@message.user_id = current_user.id
		puts "VOICI LE MESSAGE: #{@message.inspect}"
		if @message.save
			redirect_to show_messages_path(recipient_id)
		else  
			puts "MESSAGE NON CREATE"
		end
	    
	 end

	private
	  def message_params
	    params.require(:message).permit(:body)
	  end
		
		def find_conversation(recipient_id)
			conversations = Conversation.current_user_conversations(recipient_id).take
			#conversation = conversations.where(["recipient_id = ? OR sender_id = ?", recipient, recipient]).take

		end

		def set_recipient
			if params[:recipient_id].present?
				@recipient_id = params[:recipient_id]
				
			end
		  
		end
	


end