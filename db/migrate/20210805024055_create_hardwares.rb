class CreateHardwares < ActiveRecord::Migration[6.1]
  def change
    create_table :hardwares do |t|
      t.string :metodo_montagem

      t.timestamps
    end
  end
end
