class ActsController < ApplicationController

  def index
    @acts = Act.all
  end

  def show
    @act = Act.find(params[:id])
  end

  def create
    @act = Act.new(act_params)
    @act.user_id = current_user.id

    respond_to do |format|
      if @act.save
        params[:act][:tag_ids].each do |tag_id|
          Tagging.create({ act_id: @act.id, tag_id: tag_id }) unless tag_id.empty?
        end
        format.html { redirect_to acts_path, notice_success: 'Act was successfully created.' }
      else
        format.html { redirect_to acts_path, notice: "There was a problem. Please try again." }
      end
    end
  end

  def add_task
    task = Act.find(params[:id])
    user_id = current_user.id

    respond_to do |format|
      if Kindship.create( act_id: task.id, user_id: user_id )
        format.html { redirect_to users_path(current_user), success: 'Act was added to your list.' }
      else
        format.html { render "welcome/index", notice: "There was a problem. Please try again." }
      end
    end
  end

  def completed_task
    kindship = Kindship.where(act_id: params[:id], user_id: current_user.id).first
    if kindship.toggle(:completed).save
      respond_to do |format|
        format.html { redirect_to users_path(current_user), notice: 'Act was added to your completed list.' }
        format.json
      end
    else
      format.html { redirect_to users_path(current_user), notice: "There was a problem. Please try again."}

    end
  end

  private
  def act_params
    params.require(:act).permit(:title, :tag_id)
  end
end
