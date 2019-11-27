class ProfilesController < ApplicationController
  def dashboard
    @subscriptions = current_user.subscriptions
    @service = current_user.service
  end
end
