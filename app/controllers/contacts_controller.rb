class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(email: params[:email], name: params[:name], body: params[:body], phone: params[:phone], address: params[:address])

    if @contact.save
      render json: @contact
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end
end
