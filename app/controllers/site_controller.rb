class SiteController < ApplicationController

  before_filter :set_locale
  layout "application", :except => :refslist

  def set_locale
    I18n.locale = params[:lang]
  end 

  def send_contact_email
    info = params[:contact]
    sleep 3
    ContactMailer.contact_email(info).deliver
  end 
end
