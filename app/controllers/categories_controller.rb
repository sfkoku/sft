class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @books = Book.where(category_id: params[:id]).where("count > 0");
  end
end
