Rails.application.routes.draw do
  resources :enderecos
  resources :item_pedidos
  resources :fornecedors
  resources :softwares
  resources :hardwares
  resources :pedidos
  resources :clientes

  get 'endereco/:id' => "enderecos#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
