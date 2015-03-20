class ServicesController < ApplicationController
  def index
    # @services = Service.all
  if params[:search].present?
    @services = Service.near(params[:search], 50)
  else
    @services = Service.all
  end
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
        format.html {
          flash[:success] = 'Volunteer Opportunity was successfully created.'
          redirect_to services_path
        }
      else
        format.html {
          flash[:danger] = 'There was a problem.'
          redirect_to services_path }
      end
    end
  end

  def add_opportunity
    opportunity = Service.find(params[:id])
    user_id = current_user.id

    respond_to do |format|
      @volunteership = Volunteership.new( service_id: opportunity.id, user_id: user_id )
      if @volunteership.save
        format.html {
          flash[:success] = 'Volunteer activity was added to your list.'
          redirect_to services_path
        }
      else
        format.html {
          flash[:danger] = "There was a problem. Please try again."
          redirect_to services_path
        }
      end
    end
  end

  def completed_opportunity
    volunteership = Volunteership.where(service_id: params[:id], user_id: current_user.id).first
    if volunteership.toggle(:completed).save
      respond_to do |format|
        format.html { redirect_to users_path(current_user), notice: 'Volunteer opportunity was added to your completed list.' }
        format.js
      end
    else
      format.html { redirect_to users_path(current_user), notice: "There was a problem."}

    end
  end

  private
  def service_params
    params.require(:service).permit(:date, :photo, :zipcode, :title, :description, :requirement, :tag_id)
  end
end
