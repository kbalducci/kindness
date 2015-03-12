class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def create
    @service = Service.new(service_params)
    @service.user_id = current_user.id
    @service.tag_id = Tag.find(params[:tag_id]).id if params[:tag_id]


    respond_to do |format|
      if @service.save
        format.html { redirect_to services_path, notice: ' Volunteer Opportunity was successfully created.' }
      else
        format.html { render "welcome/index", notice: "There was a problem." }
      end
    end
  end

  private
  def service_params
    params.require(:service).permit(:date, :zipcode, :title, :description, :requirement, :tag_id)
  end
end
