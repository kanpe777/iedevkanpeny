class ApplicationController < ActionController::Base
  protect_from_forgery

  private
    def current_pirty
      Pirty.find(session[:pirty_id])
    rescue ActiveRecord::RecordNotFound
      pirty = Pirty.create
      session[:pirty_id] = pirty.id
      pirty
    end
end
