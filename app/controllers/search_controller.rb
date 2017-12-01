class SearchController < ApplicationController
  
  def new
  	respond_to do |format|
  		format.js
  	end
  end

  def create
   	palabra = "%#{params[:keyword]}%"
  	@patients = current_user.patients.where("first_name LIKE ? OR last_name LIKE ?",palabra,palabra)
  end
end
