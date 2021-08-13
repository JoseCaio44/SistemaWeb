class AddEnderecoIdToPedidos < ActiveRecord::Migration[6.1]
  def change
    add_reference :pedidos, :endereco, null: false, foreign_key: true
    add_reference :pedidos, :cliente, null: false, foreign_key: true
  end
end
