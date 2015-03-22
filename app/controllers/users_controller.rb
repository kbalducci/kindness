class UsersController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def index
    @users = User.all

  end

  def show
    @user = User.find(params[:id])

    # @acts = Act.where(id: current_user.kindships.pluck(:act_id))
    @acts = current_user.tasks
    @acts_finished = current_user.kindships.where(completed: true).map { |k| k.act }
    # @acts_finished = Act.where(id: current_user.kindships_finished)
    @acts_todo = current_user.kindships.where(completed: false).map { |k| k.act }

    @services = current_user.opportunities

    @services_finished = current_user.volunteerships.where(completed: true).map { |v| v.service }
    @services_todo = current_user.volunteerships.where(completed: false).map { |v| v.service }
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
      params.require(:user).permit(:first_name, :last_name, :user_name, :zipcode, :avatar, :phone, :bio, :tasks)
    end


end
