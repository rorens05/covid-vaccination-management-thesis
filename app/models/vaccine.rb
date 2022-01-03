class Vaccine < ApplicationRecord

  has_many :vaccine_stocks, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :number_of_doses, presence: true
  validates :status, presence: true

  enum status: [:active, :inactive]

  def stocks
    self.vaccine_stocks.sum(:quantity)
  end

end
