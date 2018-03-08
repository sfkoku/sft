class Admin::BooksController < AdminController
  before_action :book_params, only:[:create]
  before_action :set_book, only:[:show,:edit]

  include AdminHelper

  def index
    @books = Book.all
  end

  def show
  end

  def edit
  end

  def new
   @admin_book = Book.new 
  end


  def create
   Book.create(book_params)  
   redirect_to admin_books_path
  end

  def update
   @book= Book.find(params[:id])
   @book.update(book_params)  
   redirect_to admin_book_path(params[:id]), notice: "更新しました"
  end

    private
      def set_book
        @book = Book.find_by(id: params[:id])
      end

      def book_params
        params.require(:book).permit!
      end
end
