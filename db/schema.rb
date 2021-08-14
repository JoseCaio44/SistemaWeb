# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_14_034527) do

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "rg"
    t.string "celular"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "endereco_id", null: false
    t.index ["endereco_id"], name: "index_clientes_on_endereco_id"
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "setor"
    t.string "complemento"
    t.string "cep"
    t.string "cidade"
    t.string "pais"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string "nome"
    t.string "cnpj"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "endereco_id", null: false
    t.index ["endereco_id"], name: "index_fornecedors_on_endereco_id"
  end

  create_table "hardwares", force: :cascade do |t|
    t.string "metodo_montagem"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "produto_id", null: false
    t.index ["produto_id"], name: "index_hardwares_on_produto_id"
  end

  create_table "item_pedidos", force: :cascade do |t|
    t.integer "pedido_id", null: false
    t.integer "produto_id", null: false
    t.string "quantidade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pedido_id"], name: "index_item_pedidos_on_pedido_id"
    t.index ["produto_id"], name: "index_item_pedidos_on_produto_id"
  end

  create_table "pedidos", force: :cascade do |t|
    t.string "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "endereco_id", null: false
    t.integer "cliente_id", null: false
    t.index ["cliente_id"], name: "index_pedidos_on_cliente_id"
    t.index ["endereco_id"], name: "index_pedidos_on_endereco_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.string "preco"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "fornecedor_id", null: false
    t.index ["fornecedor_id"], name: "index_produtos_on_fornecedor_id"
  end

  create_table "softwares", force: :cascade do |t|
    t.string "versao"
    t.string "linguagem"
    t.string "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "produto_id", null: false
    t.index ["produto_id"], name: "index_softwares_on_produto_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "usuario"
    t.string "senha"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "clientes", "enderecos"
  add_foreign_key "fornecedors", "enderecos"
  add_foreign_key "hardwares", "produtos"
  add_foreign_key "item_pedidos", "pedidos"
  add_foreign_key "item_pedidos", "produtos"
  add_foreign_key "pedidos", "clientes"
  add_foreign_key "pedidos", "enderecos"
  add_foreign_key "produtos", "fornecedors"
  add_foreign_key "softwares", "produtos"
end
