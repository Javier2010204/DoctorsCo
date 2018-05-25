class SearchController < ApplicationController
	def create
		palabra = "%#{params[:keyword]}%"

		@patients = current_user.patients.where("first_name LIKE ? OR last_name LIKE ?", palabra, palabra)

		respond_to do |format|
			format.html{redirect_to root_path}
			format.json{render json: @patients}
			format.js
		end
	end
end
