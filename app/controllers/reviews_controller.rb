class ReviewsController < ApplicationController
  def new
    @petplace = Petplace.find(params[:petplace_id])
    @appointment = Appointment.find(params[:appointment_id])
    @review = Review.new
  end

  def create
    @petplace = Petplace.find(params[:petplace_id])
    @review = Review.new(review_params)
    @appointment = Appointment.find(params[:appointment_id])
    @review.appointment = @appointment
    if @review.save
      redirect_to dashboard_path, alert: 'Review created'
    else
      render :new, alert: 'You did not create a review'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description, :images)
  end
end
