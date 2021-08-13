class AddEnderecoIdToClientes < ActiveRecord::Migration[6.1]
  def change
    add_reference :clientes, :endereco, null: false, foreign_key: true
  end
end
