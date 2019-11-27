class ServicesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]
  # j ai mis en comment ci dessus car pas de modif ni create service
  # tout vient en seed

  def index
    @services    = Service.all.order(:category).reverse
    @user_choice = params[:user_choice]
  end
end
