class ContactsController < ApplicationController

  def give_contact
    contact = Contact.first
    render json: {
      id: contact.id,
      first_name: contact.first_name,
      last_name: contact.last_name,
      email: contact.email,
      phone_number: contact.phone_number

      # "#{first_name} #{last_name}"
    }
  end

  def give_all_contacts
    contacts = Contact.all
    render json: contacts
  end

end
