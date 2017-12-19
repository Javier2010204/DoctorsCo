class HomeController < ApplicationController
	layout :set_layout, only:[:unregistered]
	
	def index
		@user = current_user
		@events = current_user.events
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
