class ContactsController < ApplicationController

  def index
    contact = Contact.all
    render json: contact.as_json
  end

  def show
    contact = Contact.find_by(id: params[:id])
    render json: contact.as_json
  end

  def create
    results = Geocoder.search("Paris")
    p results.first.coordinates
    contact = Contact.new({
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      address: params[:address],
      latitude: results.first.coordinates[0],
      longitude: results.first.coordinates[1]
    })
    contact.save
  end

  def update
    contact = Contact.find_by(id: params[:id])
    contact.first_name = params[:first_name] 
    contact.last_name= params[:last_name] 
    contact.email= params[:email] 
    contact.phone_number= params[:phone_number] 
    # contact.latitude = params[:address] 
    # contact.longitude = params[:address] 
    contact.save
  end

  def destroy
    contact = Contact.find_by(id: params[:id])
    contact.delete
  end
end
