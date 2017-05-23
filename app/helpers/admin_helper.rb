module AdminHelper
  def admin_login email, pass
    admin_user = User.find_by(id: 1)
    if admin_user.email == email && admin_user.decrypt(admin_user.password) == pass  
        session[:admin] = true
    else
      User.all.each do |user| 
        if email == user.email && pass == user.decrypt(user.password) 
          p "okkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk"
          session[:user_id] = user.id
        else
          p "nooooooooooooooooooooooooooooooooooo"
        end
      end
    end
  end

  def admin_logout
    session[:admin] = nil
  end

  def user_logout
    session[:user_id] = nil
  end

  def is_admin?
    session[:admin].present?
  end

  def is_login?
    session[:user_id].present?
  end

end
