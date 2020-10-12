class Employee < ApplicationRecord
  validates :name, presence: true,uniqueness: true, length: { maximum: 10 }, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :number, presence: true,uniqueness: true, inclusion: { in: 1..999 }, format: { with: /\A[0-9]+\z/ }
end
