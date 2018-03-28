class Admin::CategoriesController < AdminController

  def new
   @category = Category.new 
  end

  def create
   Category.create(category_params)  
   redirect_to admin_books_path
  end

  private
    def category_params
      params.require(:category).permit!
    end

end
