class HomeController < ApplicationController
	layout :set_layout, only:[:unregistered, :suscribe]
	
	def index
		@user = current_user
  		@appointments = current_user.appoiments
	end

	def unregistered
		@contact = Contact.new
	end

	def suscribe
		
	end

	private
		def set_layout
			"structure"
		end		
end
