class Admin::SessionsController < AdminController
  skip_before_action :admin_check
  include AdminHelper

  def show
  end

  def create
    admin_login create_param[:email], create_param[:password]
    render :partial => "books_index", locals: {books: Book.all}
  end

  def destroy
      admin_logout
      user_logout
      redirect_to root_path
    
  end

  private
  def create_param
    params.require(:session).permit(:email,:password)
  end
end
