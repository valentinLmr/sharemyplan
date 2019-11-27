class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @services = policy_scope(Service)
    # @services = Service.all.group(:category)
    @services = Service.select("category").group(:category)
    # @service = Service.where(:categroy => @services)
    @options = Service.all
    @user_choice = params[:user_choice]
  end
end
