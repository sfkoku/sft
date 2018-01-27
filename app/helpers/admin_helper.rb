module AdminHelper

  def admin_logout
    session[:admin] = nil
  end

  def is_administrator?
    session[:admin].present?
  end

  private

    USERS = { ENV['USERNAME'] => ENV['SECRET'] }
    def digest_auth
        authenticate_or_request_with_http_digest do |user|
          USERS[user]
        end
    end

end
