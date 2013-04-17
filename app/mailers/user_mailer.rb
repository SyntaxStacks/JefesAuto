class UserMailer < ActionMailer::Base
  default :from => "ElJefe@jefesauto.com"

  def free_quote name, email, phone_number, zip
    @name = name
    @email =  email
    @phone_number = phone_number
    @zip = zip

    mail(:to => "eljefe@jefesauto.com", :from => @email, :subject => "Free Quote Request From "+ @name)
  end

  def thank_you name, email
    @name = name
    @email = email
    mail(:to => @email, :subject => "Thank You For Your Business")
  end 

  def contact name, email, phone_number, body
    @name = name
    @email = email
    @phone_number = phone_number
    @body = body
    
    mail(:to => 'eljefe@jefesauto.com', :from => @email, :subject => 'Email from '+@name)
  end
end
