class HomeController < ApplicationController
	layout :set_layout, only:[:unregistered]
	
	def index
	end

	def unregistered
	end

	private

		def set_layout
			"structure"
		end
			
end
