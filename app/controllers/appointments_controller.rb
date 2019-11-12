class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new()
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  private

  def petplace_params

  end
end
