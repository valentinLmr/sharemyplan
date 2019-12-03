class PaymentsController < ApplicationController
  def new
    @cotisation = current_user.cotisations.where(state: 'pending').find(params[:cotisation_id])
    authorize @cotisation
  end

  def create
    cotisation.update(state: 'paid')
    @subscription = cotisation.subscription
    @user = @subscription.user

    @user.cagnotte += @subscription.price
    @subscription.available_places -= 1

    @subscription.save
    @user.save
  end
end
