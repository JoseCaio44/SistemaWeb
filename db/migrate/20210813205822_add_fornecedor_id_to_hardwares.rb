class AddFornecedorIdToHardwares < ActiveRecord::Migration[6.1]
  def change
    add_reference :hardwares, :fornecedor, null: false, foreign_key: true
    add_column :hardwares, :nome, :string
    add_column :hardwares, :descricao, :string
    add_column :hardwares, :preco, :string
  end
end
