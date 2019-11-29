class PaymentsController < ApplicationController
  def new
    @order = current_user.orders.where(state: 'pending').find(params[:order_id])
    @cotisation = Cotisation.find(@order.cotisation_id)
    @price_unitaire     = cotisation_price_per_month(@cotisation)
    @order.amount_cents = @price_unitaire
  end
end
