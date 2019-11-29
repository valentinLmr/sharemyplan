class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @gcotisation = Cotisation.find(params[:cotisation_id])
    @review = Review.new
  end

  def create
    @review = Review.new(params_review)
    @cotisation = Cotisation.find(params[:cotisation_id])
    @review.user = current_user
    @review.cotisation = @cotisation
    if @cotisation.save
      redirect_to cotisation_path(@cotisation)
    else
      render :new
    end
  end

  def destroy
    authorize(@cotisation)
    @cotisation = Cotisation.find(params[:id])
    @cotisation.delete
    redirect_to cotisation_path
  end

  private

  def params_review
    params.require(:cotisation).permit(:content, :rating)
  end
end
