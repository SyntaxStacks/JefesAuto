class Quote < ActiveRecord::Base
  attr_accessible :fullname, :email, :phonenumber, :zipcode

  def self.add name, email, phonenumber, zip
    self.create(:fullname => name, :email => email, :phonenumber => phonenumber, :zipcode => zip)
  end
end
