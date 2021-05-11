class Doctor < ActiveRecord::Base
  has_many :interns, dependent: :destroy
  has_many :consultations
  has_many :patients, through: :consultations

  validates :last_name, presence: true
  # validates :last_name, uniqueness: true
  validates :first_name, uniqueness: { scope: :last_name }

  validate :no_houses

  def no_houses
    if self.last_name == 'house'
      errors.add(last_name: "No more damn houses")
    end
  end

  # def has_many_interns
  #   Intern.where(doctor_id: id)
  # end
end
