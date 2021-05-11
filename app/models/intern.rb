class Intern < ActiveRecord::Base
  belongs_to :doctor


  # def belongs_to
  #   Doctor.find(doctor_id)
  # end
end
