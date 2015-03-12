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

  private
  def act_params
    params.require(:act).permit(:title, :tag_id)
  end
end
