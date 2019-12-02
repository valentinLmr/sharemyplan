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
    @subscription            = Subscription.find(params[:subscription_id])
    @cotisation              = Cotisation.new
    @cotisation.user         = current_user
    @cotisation.start_date   = Date.today
    @cotisation.subscription = @subscription
    @cotisation.state        = "pending"
    @cotisation.price_cents  = cotisation_price_per_month(@cotisation)

    authorize @cotisation

    if @cotisation.save

      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          # name: "Netflix",
          name: @cotisation.subscription.name,
          # images: [@cotisation.service.photo_url],
          # images: [@cotisation.service.photo_url],
          # amount: 50,
          amount: @cotisation.price_cents * 100 ,
          currency: 'eur',
          quantity: 1
        }],
        success_url: cotisation_url(@cotisation),
        cancel_url: cotisation_url(@cotisation)
      )
      @cotisation.update(checkout_session_id: session.id)

      @subscription.user.cagnotte += @subscription.price
      @subscription.available_places -= 1
      @subscription.save
      @subscription.user.save

      redirect_to new_cotisation_payment_path(@cotisation)
    else
      render :new
    end
  end

  def destroy
    @subscription = Subscription.find(params[:subscription_id])
    @cotisation = Cotisation.find(params[:id])
    authorize @cotisation
    @subscription.available_places += 1
   @cotisation.destroy
    redirect_to dashboard_path
    authorize @cotisation
  end

  def cotisation_price_per_month(cotisation)
    cotisation.subscription.service.total_price.fdiv(cotisation.subscription.service.number_of_places).round(0)
  end

  private

  def params_cotisation
    params.require(:cotisation).permit(:start_date)
  end
end
