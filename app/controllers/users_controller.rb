class UsersController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render "welcome/index", notice: "There was a problem." }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
    end

    private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :user_name, :zipcode, :avatar, :phone, :bio)
    end
end
