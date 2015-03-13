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
        format.html { redirect_to acts_path, notice: 'Act was successfully created.' }
      else
        format.html { render "welcome/index", notice: "There was a problem." }
      end
    end
  end

  def add_task
    task = Act.find(params[:id])
    user_id = current_user.id

    respond_to do |format|
      if Kindship.create(act_id: task.id, user_id: user_id)
        format.html { redirect_to users_path(current_user), notice: 'Act was successfully created.' }
      else
        format.html { render "welcome/index", notice: "There was a problem." }
      end
    end
    #task = #Click Button = [actname, act_id]
    # current_user.tasks.create!(user_id: current_user.id,
    #                            act_id: @act.id
    #                           )

    # remote: true
    # link_to "act.name", create_task_act_path(act_id)

    # task = act that user selected from list
    # kindships = join table between user and act
    # kindships will have current_user.id and act_id
    # task.user_id = current_user.id

    #if @task.save
      # add it to current user's show page (profile list)
      # will belong to current user through kindship
  end

  private
  def act_params
    params.require(:act).permit(:title, :tag_id)
  end
end
