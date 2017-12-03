class Applicant < ApplicationRecord
  validates_presence_of :expected_salary, :cover_letter, :applicant_name, :applying_for, :contact_no, :email, :major_skills, :work_experience, :education
  validates :email, uniqueness: true
end
