class PaymentsController < ApplicationController
  def new
    @cotisation = current_user.cotisations.where(state: 'pending').find(params[:cotisation_id])
    authorize @cotisation
  end

  def create
    cotisation.update(state: 'paid')
    raise
  end
end
