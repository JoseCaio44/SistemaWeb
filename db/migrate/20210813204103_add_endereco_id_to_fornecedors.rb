class AddEnderecoIdToFornecedors < ActiveRecord::Migration[6.1]
  def change
    add_reference :fornecedors, :endereco, null: false, foreign_key: true
  end
end
