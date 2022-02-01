class ApplicationController < ActionController::Base
  before_action :fetch_user

  def fetch_user
    # chech if the user id in the session # set and if it the id of an actual user in our users table:

    if session[:user_id].present?
      @current_user = User.find_by id: session[:user_id]
    end # session check

    # if we ddint get nil from the above query then delete the session since the id is invalid
    session[:user_id] = nil unless @current_user.present?
  end

  def check_if_logged_in
    unless @current_user.present?
      flash[:error] = "You must be logged in to perform that action."
      redirect_to login_path
    end # login check
  end # fetch_user()
end
