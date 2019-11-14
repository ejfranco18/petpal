class ReviewsController < ApplicationController
  def create
    @appointment = Appointment.find(params[:appointment_id])
    @review = Review.new(review_params)
    @review.appointment = @appointment
    if @review.save
      redirect_to petplace_path(@petplace)
    else
      render 'petplace/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description, :images)
  end
end
