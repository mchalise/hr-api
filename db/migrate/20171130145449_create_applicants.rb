class CreateApplicants < ActiveRecord::Migration[5.0]
  def change
    create_table :applicants do |t|
      t.text :cover_letter
      t.text :applicant_name
      t.string :applying_for
      t.text :contact_no
      t.text :email
      t.text :major_skills
      t.text :work_experience
      t.text :education
      t.text :expected_salary
      t.timestamps
    end
  end
end