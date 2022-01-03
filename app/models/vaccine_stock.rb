class VaccineStock < ApplicationRecord
  belongs_to :vaccine
  validates :quantity, presence: true
  validates :date_added, presence: true

end
