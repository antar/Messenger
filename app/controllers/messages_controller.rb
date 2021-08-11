class MessagesController < ApplicationController
	def index
		@variable_1 = Message.all
	end
	
	def new
		@variable_2 = Message.new
	end
	
	def create 
  	@variable_3 = Message.new(message_params) 
  	if @variable_3.save 
    	redirect_to '/messages' 
  	else 
    	render 'new' 
  	end 
	end
	
	private 
  	def message_params 
    	params.require(:message).permit(:content) 
  	end
end
