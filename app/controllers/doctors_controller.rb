class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :update, :destroy]

  # GET /doctors
  def index
    @doctors = Doctor.all
    json_response(@doctors)
  end

  # POST /todos
  def create
    @doctor = Doctor.create!(doctor_params)
    json_response(@doctor, :created)
  end

  # GET /doctors/:id
  def show
    json_response(@doctor)
  end

  # PUT /todos/:id
  def update
    @doctor.update(doctor_params)
    head :no_content
  end

  # DELETE /doctors/:id
  def destroy
    @doctor.destroy
    head :no_content
  end

  private

  def doctor_params
    # whitelist params
    params.permit(:name, :degree, :fee, :visit_time)
  end

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
end
