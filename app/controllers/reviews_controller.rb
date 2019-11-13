class ReviewsController < ApplicationController
  def create
    @cocktail = Appointment.find(params[:appointment_id])
    @review = Review.new(review_params)
    @review.appointment = @appointment
    @review.save
    redirect_to petplace_path(@petplace)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description, :images)
  end
end
