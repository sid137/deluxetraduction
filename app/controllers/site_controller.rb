class SiteController < ApplicationController

  before_filter :set_locale

  def set_locale
    I18n.locale = params[:lang]
  end 

end
