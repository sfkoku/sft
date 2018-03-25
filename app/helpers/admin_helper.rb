module AdminHelper

  def admin_logout
    session[:admin] = nil
  end

  def is_administrator?
    unless session[:admin].present? && session[:admin] == ENV['ADMIN_EMAIL']
      redirect_to root_path
    end
  end

end
