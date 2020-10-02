class Employee < ApplicationRecord
  validates :name, presence: true,uniqueness: true, length: { maximum: 10 }, format: { with: /\p{katakana}/ }
  validates :number, presence: true,uniqueness: true, inclusion: { in: 1..999 }
end
