class ContactController < ApplicationController
    def create
      contact_params = {
        name: params[:name],
        email: params[:email],
        phone: params[:phone],
        message: params[:message]
      }
  
      ContactFormMailer.send_contact_email(contact_params).deliver_now
  
      render json: { message: 'Email sent successfully.' }
    end
  end
