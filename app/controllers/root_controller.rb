class RootController < ApplicationController
  def index
    @books = Book.where.not(count:  0)
    flash.now[:notice] 
  end
end
