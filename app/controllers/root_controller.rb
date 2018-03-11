class RootController < ApplicationController
  def index
    @books = Book.where("count > 0").where(is_published: 1)
    flash.now[:notice] 
  end
end
