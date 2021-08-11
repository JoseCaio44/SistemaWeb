class Endereco < ApplicationRecord
    has_many :cliente
    has_many :fornecedor
    has_many :pedidos
end
