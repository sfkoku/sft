class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @books = Book.where(category_id: params[:id]);
  end
end
