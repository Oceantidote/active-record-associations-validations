class Patient < ActiveRecord::Base
  has_many :consultations
  has_many :doctors, through: :consultations



  before_create :capitalize_names
  after_create :send_welcome_email

  def capitalize_names
    self.first_name = self.first_name&.capitalize
    self.last_name = self.last_name&.capitalize
  end

  def send_welcome_email
    # send email
  end
end
