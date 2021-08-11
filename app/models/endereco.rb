class Endereco < ApplicationRecord
    has_one :cliente
    has_one :fornecedor
    has_many :pedidos
end
