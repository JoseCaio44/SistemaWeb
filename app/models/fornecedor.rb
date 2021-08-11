class Fornecedor < ApplicationRecord
    belongs_to :endereco
    has_many :produtos
end
