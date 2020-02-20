class Product < ApplicationRecord
  #validates
  validates :name, :description, presence: true
  validates :list_price, :sale_price, numericality: { greater_than: 0 }
  validates :sale_price, numericality: { less_than_or_equal_to: :list_price }
  
  #state
  enum state: {for_sale: 0, not_for_sale: 1, purchasing: 2}

  #relationship
  has_many_attached :images
  belongs_to :user
end
