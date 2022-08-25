class Product < ApplicationRecord
  belongs_to :user
  has_many :orders

  has_many_attached :photos

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  CATEGORY = %w[Dildo Brinquedos Fantasias Acessórios Plugs Bonecas]
  validates :category, presence: true, inclusion: { in: CATEGORY }
  validates :description, presence: true, length: { minimum: 10}

end
