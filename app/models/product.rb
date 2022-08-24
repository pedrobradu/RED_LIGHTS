class Product < ApplicationRecord
  belongs_to :user
  has_many :orders

  has_one_attached :photo

  CATEGORY = %w[Dildo Brinquedos Fantasias Acessórios Plugs Bonecas]
end
