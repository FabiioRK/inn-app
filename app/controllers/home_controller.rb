class HomeController < ApplicationController

  def index
    @recent_inns = Inn.where(active: true).order(created_at: :desc).limit(3)
    @inns = Inn.where(active: true).where.not(id: @recent_inns)
  end

end
