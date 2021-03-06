class HomeController < ApplicationController
  def index
  end

  def send_quote

    #Add contact to db
    Quote.add(params[:name], params[:email], params[:phone_number], params[:zip])
    #Send e-mail
    UserMailer.free_quote(params[:name], params[:email], params[:phone_number], params[:zip] ).deliver
    UserMailer.thank_you(params[:name], params[:email]).deliver
    redirect_to root_url

  end
end
