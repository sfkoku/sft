class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category_name = Category.find(params[:id]).name
    @books = Book.where(category_id: params[:id]).where("count > 0");
  end
end
