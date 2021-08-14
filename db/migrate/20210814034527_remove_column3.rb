class RemoveColumn3 < ActiveRecord::Migration[6.1]
  def change
    remove_column :produtos, :fornecedor_id_id
    add_reference :produtos, :fornecedor, null: false, foreign_key: true
  end
end
