class AddFornecedorIdToSoftwares < ActiveRecord::Migration[6.1]
  def change
    add_reference :softwares, :fornecedor, null: false, foreign_key: true
    add_column :softwares, :nome, :string
    add_column :softwares, :descricao, :string
    add_column :softwares, :preco, :string
  end
end
