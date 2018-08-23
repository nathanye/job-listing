class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_is_admin
    if !current_user.admin?
      flash[:alert] = '你不是管理员，无权访问！'
      redirect_to root_path
    end
  end
end
