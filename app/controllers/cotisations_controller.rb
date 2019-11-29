class CotisationsController < ApplicationController
  def show
    @cotisation = Cotisation.find(params[:id])
    @subscription = @cotisation.subscription
    authorize @cotisation
  end

  def new
    @subscription = Subscription.find(params[:subscription_id])
    @cotisation = Cotisation.new
    authorize @cotisation
  end

  def create
    @cotisation        = Cotisation.new
    @subscription      = Subscription.find(params[:subscription_id])
    @cotisation.user   = current_user
    @cotisation.start_date = Date.today
    @cotisation.subscription = @subscription
    authorize @cotisation

    if @cotisation.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @cotisation = Cotisation.find(params[:id])
    authorize @cotisation
   @cotisation.destroy
    redirect_to dashboard_path
    authorize @cotisation
  end

  private

  def params_cotisation
    params.require(:cotisation).permit(:start_date)
  end
end
