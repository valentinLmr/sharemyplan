class StripePayoutFailedSessionService
  def call(event)
    cotisation = Cotisation.find_by(checkout_session_id: event.data.object.id)
    # cotisation.destroy
  end
end
