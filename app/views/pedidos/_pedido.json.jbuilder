json.extract! pedido, :id, :data, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
