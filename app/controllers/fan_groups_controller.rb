class FanGroupsController < ApplicationController
<<<<<<< HEAD

=======
>>>>>>> 5cec2f4fff7bc34ab1d29eb64e789d03c3447553
  def index
    @fan_groups = Fan_Group.all
  end

  def show
    @fan_group = Fan_Group.find(params[:id])
    @booking = Booking.new
  end

<<<<<<< HEAD

 private
=======
  private
>>>>>>> 5cec2f4fff7bc34ab1d29eb64e789d03c3447553

  def params_fan_group
    params.require(:fan_group).permit(:group_name, :category, :price, :size, :description)
  end
<<<<<<< HEAD

=======
>>>>>>> 5cec2f4fff7bc34ab1d29eb64e789d03c3447553
end

