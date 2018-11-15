class HomeController < ApplicationController
	layout :set_layout, only:[:unregistered, :suscribe]
	
	def index
		@user = current_user
		@appoiments = current_user.appoiments
		@users = User.all
	end

	def unregistered
		@contact = Contact.new
	end

	def suscribe
		
	end

	def doctors
		@doctors = User.all
	end

	private
		def set_layout
			"structure"
		end		
end
