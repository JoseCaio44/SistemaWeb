class Pedido < ApplicationRecord
    belongs_to :endereco
    belongs_to :cliente
end
