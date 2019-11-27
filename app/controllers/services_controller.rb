class ServicesController < ApplicationController
  def index
    @services    = Service.all.order(:category).reverse
    @user_choice = params[:user_choice]
  end
end
