class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def toto
    @notification = Notification.find(params[:id])
    @notification.delete
  end
end
