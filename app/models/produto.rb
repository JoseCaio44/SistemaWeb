class Produto < ApplicationRecord
  belongs_to :fornecedor
  has_many :hardwares
  has_many :softwares
end
