class Item < ApplicationRecord
  validates :name, presence: true,uniqueness: true, length: { maximum: 10 }, format: { with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/ }
  validates :price, presence: true,uniqueness: true, length: { maximum: 4 }
  validates :detail, presence: true, length: { maximum: 100 }
end
