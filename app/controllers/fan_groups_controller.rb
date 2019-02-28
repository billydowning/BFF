class FanGroupsController < ApplicationController
  def index
    @fan_groups = FanGroup.all
    unless params[:city].blank?
      @fan_groups = FanGroup.where(city: params[:city].capitalize)
    end
    # raise
    # perform search code goes here
  #   render ‘index’
  # end
end

def show
  @fan_group = FanGroup.find(params[:id])
  @booking = Booking.new
end

#params for image upload
def fan_group_params
  params.require(:fan_group).permit(:photo)
end

private

def params_fan_group
  params.require(:fan_groups).permit(:city, :group_name, :category, :price, :size, :description, :photo)
end

end
