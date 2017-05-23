class BooksController < ApplicationController
  before_action :set_book
  def show
    @log = Log.new
  end

  private
    def set_book
      @book = Book.find_by(id: params[:id])
    end
end
