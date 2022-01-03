class Vaccination < ApplicationRecord
  belongs_to :patient
  belongs_to :vaccine

  validates :date_of_vacination, presence: true
end
