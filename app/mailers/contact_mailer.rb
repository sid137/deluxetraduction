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
    upload = info[:file]
    attachments[upload.original_filename]  =  upload.read
    mail(:subject => "Deluxe Traduction Contact Form")
  end
end

