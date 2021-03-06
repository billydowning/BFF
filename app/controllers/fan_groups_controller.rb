class FanGroupsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]


  # def index
  #   @fan_groups = FanGroup.all
  #   unless params[:city].blank?
  #     @fan_groups = FanGroup.where(city: params[:city].capitalize)
  #   end
  # end

  # def index
  #   @fan_groups = FanGroup.all
  #   unless params[:city].blank?
  #     sql_query = "city ILIKE :city AND category ILIKE :category AND price <= :price AND size <= :size "
  #     @fan_groups = FanGroup.where(sql_query, city: params[:city].capitalize, category: params[:category], price: params[:price], size: params[:size])
  #   end
  # end

    def index
      if params[:city].blank? && params[:category].blank? && params[:price].blank? && params[:size].blank?
          @fan_groups = FanGroup.all
      elsif params[:city].present? && params[:category].blank? && params[:price].blank? && params[:size].blank?
        @fan_groups = FanGroup.where("city ILIKE :city", city: params[:city])

      elsif params[:city].present? && params[:category].present? && params[:price].blank? && params[:size].blank?
        @fan_groups = FanGroup.where("category ILIKE :category AND city ILIKE :city ", category: params[:category], city: params[:city])

      elsif params[:city].present? && params[:category].present? && params[:price].present? && params[:size].blank?
        @fan_groups = FanGroup.where("price <= :price AND category ILIKE :category AND city ILIKE :city ", price: params[:price], category: params[:category], city: params[:city])

      elsif params[:city].present? && params[:category].present? && params[:price].present? && params[:size].present?
        @fan_groups = FanGroup.where("price <= :price AND category ILIKE :category AND city ILIKE :city AND size <= :size", price: params[:price], category: params[:category], city: params[:city], size: params[:size])

      elsif params[:city].present? && params[:category].blank? && params[:price].blank? && params[:size].present?
        @fan_groups = FanGroup.where("city ILIKE :city AND size <= :size", city: params[:city], size: params[:size])

      elsif params[:city].blank? && params[:category].blank? && params[:price].present? && params[:size].blank?
        @fan_groups = FanGroup.where("price <= :price", price: params[:price])

      else params[:city].present? && params[:category].blank? && params[:price].present? && params[:size].blank?
        @fan_groups = FanGroup.where("price <= :price AND city ILIKE :city", price: params[:price], city: params[:city])

      end





      # @fan_groups = @fan_groups.where("city ILIKE :city", city: params[:city]) if params[:city] != ''
      # @fan_groups = @fan_groups.where("price <= :price", price: params[:price]) if params[:price] != (nil || '')
      # @fan_groups = @fan_groups.where("category ILIKE :category", category: params[:category]) if params[:category] != nil
      # @fan_groups = @fan_groups.where("size <= :size", size: params[:size]) if params[:size] != nil
end


  #   unless params[:city].blank?
  #     sql_query = "city ILIKE :city AND category ILIKE :category AND price <= :price AND size <= :size "
  #     @fan_groups = FanGroup.where(sql_query, city: params[:city].capitalize, category: params[:category], price: params[:price], size: params[:size])
  #   end
  # end



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

#params for image upload
def fan_group_params
  params.require(:fan_group).permit(:photo)
end

private

def params_fan_group
  params.require(:fan_groups).permit(:city, :group_name, :category, :price, :size, :description, :photo)
end

end
