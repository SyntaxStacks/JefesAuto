class ContactController < ApplicationController
  def index
  end

  def contact_via_email 
    @name = params[:name]
    @email = params[:email]
    @phone_number = params[:phone_number]
    @body = params[:body]
    
    Contact.add(@name, @email, @phone_number, @body)
    UserMailer.contact(@name, @email, @phone_number, @body).deliver
    UserMailer.thank_you(params[:name], params[:email]).deliver
    redirect_to root_url
  end
end
