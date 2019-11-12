class ReviewsController < ApplicationController
  def create
    @cocktail = Petplace.find(params[:petplace_id])
    @review = Review.new(review_params)
    @review.petplace = @petplace
    @review.save
    redirect_to petplace_path(@petplace)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description, :images)
  end
end

# SOMEONE NEEDS TO PUT THIS IN PETPLACE SHOW.HTML.ERB
# <%= render "reviews/new", petplace: @pletplaces, review: @review %>
