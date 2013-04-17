class HomeController < ApplicationController
  def index
  end

  def send_quote
    UserMailer.free_quote(params[:name], params[:email], params[:phone_number], params[:zip] ).deliver
    UserMailer.thank_you(params[:name], params[:email]).deliver
    redirect_to root_url
  end
end
