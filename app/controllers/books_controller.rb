class BooksController < ApplicationController
  before_action :set_book
  def show
    session.delete(:requested_book_id)
    if log = Log.get_current_user_log(current_user.id, params[:id]).first
      @log = log
    else
      @log = Log.new
    end
  end

  private
    def set_book
      @book = Book.find_by(id: params[:id])
    end
end
