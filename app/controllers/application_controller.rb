class ApplicationController < ActionController::Base
  protect_from_forgery

  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect} \n"
    {:lang  =>  I18n.locale}
  end 
end
