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

    respond_to do |format|
      if @service.save
        params[:service][:tag_ids].each do |tag_id|
          Tagging.create({ service_id: @service.id, tag_id: tag_id }) unless tag_id.empty?
        end
        format.html { redirect_to services_path, notice: ' Volunteer Opportunity was successfully created.' }
      else
        format.html { render "welcome/index", notice: "There was a problem." }
      end
    end
  end

  private
  def service_params
    params.require(:service).permit(:date, :photo, :zipcode, :title, :description, :requirement, :tag_id)
  end
end
