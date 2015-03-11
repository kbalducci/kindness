class Act < ActiveRecord::Base
  belongs_to :user
  has_many :doers, through: :kindship
  has_many :taggings
  has_many :tags, through: :taggings
  accepts_nested_attributes_for :tags

  def create
    @act = Act.new(act_params)

    respond_to do |format|
      if @act.save
        format.html { redirect_to @act, notice: 'User was successfully created.' }
      else
        format.html { render "welcome/index", notice: "There was a problem." }
      end
    end
  end

  private
  def act_params
    params.require(:act).permit(:title)
  end
end
