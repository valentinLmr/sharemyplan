class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @services    = Service.all.order(:category).reverse
    authorized(@services)
    @user_choice = params[:user_choice]
  end
end
