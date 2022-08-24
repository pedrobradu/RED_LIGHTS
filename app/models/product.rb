class Product < ApplicationRecord
  belongs_to :user
  has_many :orders

  CATEGORY = %w[Dildo Brinquedos Fantasias Acessórios Plugs Bonecas]
end
