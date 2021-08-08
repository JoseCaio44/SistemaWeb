json.extract! endereco, :id, :setor, :complemento, :cep, :cidade, :pais, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
