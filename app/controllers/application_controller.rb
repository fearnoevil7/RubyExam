class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorize
  private
  def authorize
    if session["user_id"] != nil
      puts "^^^^^^^^^authentication successfull!!!!!!!!!"
    else
      puts "must be logged in!!!!!!!"
      redirect_to "/"
    end
  end
end
