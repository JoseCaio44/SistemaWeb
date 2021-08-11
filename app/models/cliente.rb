class Cliente < ApplicationRecord
    belongs_to :endereco
    has_many :pedidos
end
