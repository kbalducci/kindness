class UsersController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  # has_attached_file :avatar,
  # :styles => { :medium => "300x300>", :thumb => "100x100>" },
  # :bucket => 'kbjsinstaclone',
  # :url =>':s3_domain_url',
  # :path => ':class/:attachment/:id_partition/:style/:filename',
  # :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render "welcome/index" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
    end

    private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :user_name, :zipcode, :phone, :bio, :avatar)
    end
end
