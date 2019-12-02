class StripeCheckoutSessionService
  def call(event)
    cotisation = Cotisation.find_by(checkout_session_id: event.data.object.id)
    cotisation.update(state: 'paid')
    raise
  end
end
