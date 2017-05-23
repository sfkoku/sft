class UsersController < ApplicationController
  before_action :set_user, only: [:show,:edit,:update]

  def show
  end

  def edit
  end

  def new
   @user = User.new 
  end

  def create
    User.create(user_params)  
    redirect_to root_path
  end

  def update
    @user.update!(user_params)
    redirect_to user_path(@user.id)
  end

  private
    def set_user
      @user = User.find_by(id: params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password,:faculty,:year,:department)
    end

end
