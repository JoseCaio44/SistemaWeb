class CreateItemPedidos < ActiveRecord::Migration[6.1]
  def change
    create_table :item_pedidos do |t|
      t.references :pedido, null: false, foreign_key: true
      t.references :produto, null: false, foreign_key: true
      t.string :quantidade

      t.timestamps
    end
  end
end
