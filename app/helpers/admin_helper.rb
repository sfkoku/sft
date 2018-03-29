module AdminHelper

  def admin_logout
    session[:admin] = nil
  end

  def is_administrator?
    unless current_user.present? && current_user.email == ENV['ADMIN_EMAIL']
      redirect_to root_path
    end
  end

end
