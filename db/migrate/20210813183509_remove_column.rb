class RemoveColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :clientes, :endereco
    remove_column :clientes, :created_at
    remove_column :clientes, :updated_at
  end
end
