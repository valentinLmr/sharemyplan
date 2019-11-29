class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def dashboard
    @subscriptions = current_user.subscriptions
    authorize(@subscriptions)

    @cotisations = policy_scope(Cotisation)
    @user = current_user


    # Cotisation.where(user: user)
    # .where({ id: user_id = current_user })
    authorize(@cotisations)
  end
end
