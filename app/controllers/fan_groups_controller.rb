class FanGroupsController < ApplicationController
  def index
    @fan_groups = FanGroup.all
  end
end
