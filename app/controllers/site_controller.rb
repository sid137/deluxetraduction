class SiteController < ApplicationController

  before_filter :set_locale
  layout "application", :except => :refslist

  def set_locale
    I18n.locale = params[:lang]
  end 

end
