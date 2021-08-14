class AddProdutoIdToHardwareAndSoftware < ActiveRecord::Migration[6.1]
  def change
    add_reference :hardwares, :produto, null: false, foreign_key: true
    add_reference :softwares, :produto, null: false, foreign_key: true
  end
end
