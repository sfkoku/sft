class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        if user.email == ENV['ADMIN_EMAIL']
          session[:admin] = ENV['ADMIN_EMAIL']
        end
        log_in user
        redirect_to book_path(session[:requested_book_id]) and return if session[:requested_book_id].present?
        redirect_to user
      else
        flash.now[:danger] = 'emailまたはパスワードが違います'
        render 'new'
      end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
