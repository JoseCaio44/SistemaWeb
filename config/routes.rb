Rails.application.routes.draw do
  resources :produtos
  resources :enderecos
  resources :item_pedidos
  resources :fornecedors
  resources :softwares
  resources :hardwares
  resources :pedidos
  resources :clientes

  get '/', to: 'tela_inicials#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
