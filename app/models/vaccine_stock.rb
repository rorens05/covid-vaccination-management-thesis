class VaccineStock < ApplicationRecord
  belongs_to :vaccine
  validates :quantity, presence: true

end
