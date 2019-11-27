class ProfilesController < ApplicationController
  def dashboard
    @subscriptions = current_user.subscriptions
    @service = current_user.service
    authorize(@subscriptions)
    authorize(@service)
  end
end
