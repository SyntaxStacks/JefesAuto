class ContactController < ApplicationController
  def index
  end

  def contact_via_email name, email, phone_number, body
    @name = name
    @email = email
    @phone_number = phone_number
    @body = body
    
    UserMailer.contact(@name, @email, @phone_number, @body).deliver
    UserMailer.thank_you(params[:name], params[:email]).deliver
    redirect_to root_url
  end
end
