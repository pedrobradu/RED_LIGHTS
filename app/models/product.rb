class Product < ApplicationRecord
  belongs_to :user

  CATEGORY = %w[Dildo Brinquedos Fantasias Acessórios Plugs Bonecas]
end
