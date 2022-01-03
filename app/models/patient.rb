class Patient < ApplicationRecord
  belongs_to :barangay

  validates :barangay, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :birthday, presence: true
  validates :contact_number, presence: true
  validates :gender, presence: true
  validates :status, presence: true
  validates :place_of_birth_city, presence: true
  validates :place_of_birth_country, presence: true
  validates :nationality, presence: true
  validates :civil_status, presence: true
  validates :religion, presence: true
  validates :address, presence: true

  enum status: [:active, :inactive]
  enum gender: [:male, :female, :undisclosed]
  enum civil_status: [:single, :married]

  def age_in_years
    
  end

end
