class FanGroupsController < ApplicationController
  def index
    @fan_groups = FanGroup.all
  end

  def show
    @fan_group = FanGroup.find(params[:id])
    @booking = Booking.new
  end


 private

  def params_fan_group
    params.require(:fan_group).permit(:group_name, :category, :price, :size, :description)
  end

end
