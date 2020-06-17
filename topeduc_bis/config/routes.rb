Rails.application.routes.draw do

  namespace :admin do
      resources :users
      resources :calendars
      resources :carte_vitales
      resources :clients
      resources :contracts
      resources :diplomas
      resources :factures
      resources :ids
      resources :kbis
      resources :messages
      resources :permis_bs
      resources :requests
      resources :resumes
      resources :ribs

      root to: "users#index"
    end
# Factures
	resources :facture
# Clients
	resources :client
# Messages
	resources :message
	
# Contracts
	resources :request
	resources :contract

# Upload Documents: 
	resources :resume
	resources :permis_b
	resources :diploma
	resources :kbi
	resources :id
	resources :carte_vitale
	resources :rib

# Calendar:
	resources :calendar

# DEVISE: 
	devise_for :users, controllers: {
        sessions: 'users/sessions', registrations: 'users/registrations'
      }
 
# Other Routes:
	get 'static/home'
	get 'static/secret_page'
	get 'static/test'
	root 'static#home'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
