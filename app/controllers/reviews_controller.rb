class ReviewsController < ApplicationController
  def new
    @appointment = Appointment.find(params[:appointment_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @appointment = Appointment.find(params[:petplace_id])
    @review.appointment = @appointment
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description, :images)
  end
end
