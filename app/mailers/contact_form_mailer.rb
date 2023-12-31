class ContactFormMailer < ApplicationMailer
    def send_contact_email(contact_params)
      @contact = contact_params
      @name = contact_params[:name]
      @email = contact_params[:email]
      @phone = contact_params[:phone]
      @message = contact_params[:message]
      mail(
        from: @contact[:email],
        to: 'smtpburner12@gmail.com',
        subject: 'New Contact Form Submission'
      )
    end
  end