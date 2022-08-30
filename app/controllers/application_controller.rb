class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # def set_current_user
  #   CurrentUser.user = User.first
  # end
end
