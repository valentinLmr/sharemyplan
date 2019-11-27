class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @services = policy_scope(Service)
    @services    = Service.all.order(:category).reverse
    @user_choice = params[:user_choice]
  end
end
