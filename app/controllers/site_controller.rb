class SiteController < ApplicationController

  before_filter :set_locale
  layout "application", :except => [:refslist, :email1]

  def set_locale
    I18n.locale = params[:lang]
  end 

  def send_contact_email
    info = params[:contact]
    ContactMailer.contact_email(info).deliver
    render 'send_contact_email'
  end 

  def send_permanence_email
    info = params[:contact]
    ContactMailer.permanence_email(info).deliver
    render 'send_contact_email'
  end 

  def send_translator_email
    info = params[:contact]
    ContactMailer.translator_email(info).deliver
    render 'send_contact_email'
  end 
end
