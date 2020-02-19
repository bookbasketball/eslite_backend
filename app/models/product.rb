class Product < ApplicationRecord
  #validates
  validates :name, :description, presence: true
  validates :list_price, :sale_price, numericality: { greater_than: 0 }
  validates :sale_price, numericality: { less_than_or_equal_to: :list_price }

  #relationship
  belongs_to :user
end
