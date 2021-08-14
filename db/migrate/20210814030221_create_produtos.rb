class CreateProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :produtos do |t|
      t.references :fornecedor_id, null: false, foreign_key: true
      t.string :nome
      t.string :descricao
      t.string :preco

      t.timestamps
    end
  end
end
