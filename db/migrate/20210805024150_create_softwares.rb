class CreateSoftwares < ActiveRecord::Migration[6.1]
  def change
    create_table :softwares do |t|
      t.string :versao
      t.string :linguagem
      t.string :tipo

      t.timestamps
    end
  end
end
