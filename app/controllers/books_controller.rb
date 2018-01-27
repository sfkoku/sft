class BooksController < ApplicationController
  before_action :set_book
  def show
    session.delete(:requested_book_id)
    @log = Log.new
  end

  private
    def set_book
      @book = Book.find_by(id: params[:id])
    end
end
