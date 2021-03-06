class ApplicationController < ActionController::Base
  include Clearance::Controller
  include Pundit
  protect_from_forgery with: :exception

 	rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


  def user_not_authorized(exception = nil)
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end
end
