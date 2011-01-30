class ContactMailer < ActionMailer::Base
  default :from => "Deluxe Traduction Website <contact@deluxetraduction.com>", :to => 'sid137@gmail.com'


  def contact_email(info)
    @name = info[:name] 
    @company = info[:company]
    @email = info[:email]
    @file = info[:file]
    @address = info[:address]
    @comments = info[:comments]
    headers["Reply-To"] = info[:email]
    attachments["test.pdf"] = info[:file]
    mail(:subject => "Deluxe Traduction Contact Form")
  end
end

