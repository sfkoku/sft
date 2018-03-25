class Admin::SessionsController < AdminController
  include AdminHelper

  def show
    render layout:'application'
  end

  def create
    admin_login create_param[:email], create_param[:password]
    #render :partial => "books_index", locals: {books: Book.all}
    p "a"
    redirect_to root_path
    p "5"
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
