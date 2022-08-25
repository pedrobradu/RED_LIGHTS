class Product < ApplicationRecord
  belongs_to :user
  has_many :orders

  has_many_attached :photos

  CATEGORY = %w[Dildo Brinquedos Fantasias Acessórios Plugs Bonecas]
end
