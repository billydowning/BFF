class FanGroupsController < ApplicationController
  # def index
  #   @fan_groups = FanGroup.all
  #   unless params[:city].blank?
  #     @fan_groups = FanGroup.where(city: params[:city].capitalize)
  #   end
  # end

  def index
    @fan_groups = FanGroup.all
    unless params[:city].blank?
      sql_query = "city ILIKE :city AND category ILIKE :category AND price <= :price AND size <= :size "
      @fan_groups = FanGroup.where(sql_query, city: params[:city].capitalize, category: params[:category], price: params[:price], size: params[:size])
    end
  end


    # raise
    # perform search code goes here
  #   render ‘index’
  # end

  # def index
  #   if params[:query].present?
  #     sql_query = "title ILIKE :query OR syllabus ILIKE :query"
  #     @movies = Movie.where(sql_query, query: "%#{params[:query]}%")
  #   else
  #     @movies = Movie.all
  #   end
  # end


  def show
    @fan_group = FanGroup.find(params[:id])
    @booking = Booking.new
  end


 private

  def params_fan_group
    params.require(:fan_groups).permit(:city, :group_name, :category, :price, :size, :description)
  end

end
