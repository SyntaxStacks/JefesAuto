class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name, :phonenumber

  def self.add name, email, phonenumber, message
    self.create(:name => name, :email => email, :phonenumber => phonenumber, :message => message)
  end
end
