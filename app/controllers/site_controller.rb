class SiteController < ApplicationController

  before_filter :set_locale
  layout "application", :except => :refslist

  def set_locale
    I18n.locale = params[:lang]
  end 

  def send_contact_email
    ContactMailer.contact_email(params[:contact]).deliver
  end 
end
