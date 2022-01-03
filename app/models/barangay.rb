class Barangay < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :population, presence: true
  validates :status, presence: true
  enum status: [:active, :inactive]
end
