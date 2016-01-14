class OrionController < ApplicationController
	def create
	@orion = Orion.new(params[:orion])
		@orion.user_id = current_user.id
		if @orion.save
			redirect_to current_user
		else
			flash[:error] = 'Problem!'
			redirect_to current_user
		end
	end

	def index
		@orion = Orion.all include: :user
		@orion = Orion.new
	end
end

