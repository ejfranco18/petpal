class AppointmentsController < ApplicationController
  before_action :set_user, only: [:new, :create] #, :edit, :update needet to be added?
  before_action :set_petplace, only: [:new]
  before_action :set_appointment, only: [:status_accepted, :status_declined]

  # def status_accepted
  #   @appointment.status = 'accepted'
  # end

  def status_pending
    @appointment = Appointment.find(params[:id])
    @appointment.status = 'pending'
    @appointment.save
    redirect_to dashboard_path, alert: 'Booking updated'
  end

  def status_accepted
    @appointment = Appointment.find(params[:id])
    @appointment.status = 'accepted'
    @appointment.save
    redirect_to dashboard_path, alert: 'Booking accepted'
  end

  def status_canceled
    @appointment = Appointment.find(params[:id])
    @appointment.status = 'canceled'
    @appointment.save
    redirect_to dashboard_path, alert: 'Booking canceled'
  end

  def index
    @appointments = Appointment.all
  end

  def show
    review = Review.new
    @appointment = Appointment.find(params[:id])
    @petplace = Petplace.find(@appointment.petplace_id)
  end

  def new
    @petplace = Petplace.find(params[:petplace_id])
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @petplace = Petplace.find(params[:petplace_id])
    # if @user
    @appointment.user = @user
    @appointment.petplace = @petplace
    @appointment.status = 'selected'
    if current_user
      if @appointment.save
        redirect_to appointment_path(@appointment) # maybe has to be changed to confirmation page
      else
        render :new
      end
    else
      redirect_to new_user_session_path
    end
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  private

  def set_user
    @user = current_user
  end

  def set_petplace
    @petplace = Petplace.find(params[:petplace_id])
  end

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:start_date, :end_date)
  end
end
