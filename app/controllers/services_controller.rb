class ServicesController < ApplicationController
  def index
    # @services = Service.all.group(:category)
    @services = Service.select("category").group(:category)
    # @service = Service.where(:categroy => @services)
    @options = Service.all.order(category: :asc)
    @user_choice = params[:user_choice]
  end
end
