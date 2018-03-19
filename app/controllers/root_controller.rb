class RootController < ApplicationController
  def index

    if params[:title].present?
      @books = Book.get_by_title(params[:title]).is_stocked.is_published
      @books = @books.page(params[:page]).per(20)
    else
      @books = Book.is_stocked.is_published
      @books = @books.page(params[:page]).per(20)
    end
  end
end
