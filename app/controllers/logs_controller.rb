class LogsController < ApplicationController
  
  def index
   redirect_to user_logs_path(current_user.id) unless current_user.id == params[:user_id].to_i  
   @logs = Log.where(user_id: params[:user_id])
  end
  
  def create
    if logged_in?
      Log.create(log_params)  
      book = Book.find_by(id: params[:log][:book_id])
      book.update_attribute(:count,  book.count - 1)
      redirect_to root_path, notice: '予約しました。' and return
    end
    redirect_to login_path
  end

  private
    def log_params
      params.require(:log).permit(:user_id, :book_id,:count)
    end
end
