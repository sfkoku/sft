class RootController < ApplicationController
  def index
    @books = Book.where("count > 0")
    flash.now[:notice] 
  end
end
