class CreateEnderecos < ActiveRecord::Migration[6.1]
  def change
    create_table :enderecos do |t|
      t.string :setor
      t.string :complemento
      t.string :cep
      t.string :cidade
      t.string :pais

      t.timestamps
    end
  end
end
