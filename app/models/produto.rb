class Produto < ApplicationRecord
    belongs_to :fornecedor
    has_many :softwares
    has_many :hardwares
    has_many :item_pedidos
end
