class RootController < ApplicationController
  def index
    @books = Book.where("count > 0").where(is_published: 1)
    @books = @books.page(params[:page]).per(20)
    flash.now[:notice] 
  end
end
