class ApplicantsController < ApplicationController
  skip_before_action :authorize_request, only: [:create]
  before_action :set_applicant, only: [:show, :update, :destroy]

  # GET /applicants
  def index
    # get current user applicants
    @applicants = Applicant.all()
    json_response(@applicants)
  end

  # GET /applicants/:id
  def show
    json_response(@applicant)
  end

  # POST /applicants
  def create
    @applicant = Applicant.create!(applicant_params)
    json_response(@applicant, :created)
  end

  # PUT /applicants/:id
  def update
    @applicant.update(applicant_params)
    head :no_content
  end

  # DELETE /applicants/:id
  def destroy
    @applicant.destroy
    head :no_content
  end

  private

  # remove `created_by` from list of permitted parameters
  def applicant_params
    params.permit(:expected_salary, :cover_letter, :applicant_name, :applying_for, :contact_no, :email, :major_skills, :work_experience, :education)
  end

  def set_applicant
    @applicant = applicant.find(params[:id])
  end
end
