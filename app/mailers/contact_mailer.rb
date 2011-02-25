class ContactMailer < ActionMailer::Base
  default :from => "Deluxe Traduction Website <contact@deluxetraduction.com>", :to => 'contact@deluxetraduction.com'


  def contact_email(info)
    upload = info[:file]
    info.delete :file
    @info = info
    attachments[upload.original_filename]  =  upload.read if upload
    mail(:subject => "Deluxe Traduction Contact Form", :reply_to  => info[:email])
  end

  def translator_email(info)
    upload = info[:file]
    info.delete :file
    @info = info
    attachments[upload.original_filename]  =  upload.read if upload
    mail(:subject => "Application Translator", :reply_to => info[:email], :to => 'sid137@gmail.com')
  end

  def permanence_email(info)
    @info = info
    mail(:subject => "Deluxe Traduction Permanence Telephonique", :reply_to  => info[:email])
  end 
end

