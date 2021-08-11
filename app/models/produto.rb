class Produto < ApplicationRecord
    belongs_to :fornecedor
    has_many :softwares
    has_many :hardwares
end
