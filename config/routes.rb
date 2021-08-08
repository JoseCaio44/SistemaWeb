Rails.application.routes.draw do
  resources :fornecedors
  resources :softwares
  resources :hardwares
  resources :produtos
  resources :pedidos
  resources :enderecos
  resources :clientes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
