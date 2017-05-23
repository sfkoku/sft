class LogsController < ApplicationController
  
  #def new
  # @log = Log.new
  #end
  #
  def create
   Log.create(log_params)  
   book = Book.find_by(id: params[:log][:book_id])
   book.update_attribute(:count,  book.count - 1)
   redirect_to root_path, notice: '予約しました。'
  end

  private
    def log_params
      params.require(:log).permit(:user_id, :book_id,:count)
    end
end
