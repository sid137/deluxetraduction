class ContactMailer < ActionMailer::Base
  default :from => "Deluxe Traduction Website <contact@deluxetraduction.com>", :to => 'sid137@gmail.com'


  def contact_email(info)
    upload = info[:file]
    info.delete :file
    @info = info
    attachments[upload.original_filename]  =  upload.read if upload
    mail(:subject => "Deluxe Traduction Contact Form", :reply_to  => info[:email])
  end
end

