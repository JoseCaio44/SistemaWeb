class RemoveColumn2 < ActiveRecord::Migration[6.1]
  def change
    remove_column :hardwares, :nome
    remove_column :hardwares, :preco
    remove_column :hardwares, :descricao
    remove_column :hardwares, :fornecedor_id
    remove_column :softwares, :nome
    remove_column :softwares, :preco
    remove_column :softwares, :descricao
    remove_column :softwares, :fornecedor_id
  end
end
