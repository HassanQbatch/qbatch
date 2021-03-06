class MessagesController < ApplicationController
	#before_action :authenticate_user!

	def new
		@message = Message.new
	end
	
	def create
		@message = Message.new(message_params)

		if @message.save
			redirect_to @message
		else
			render :new
		end
	end

	private
	def message_params
		params.require(:message).permit(:name,:message,:email)
	end

end
