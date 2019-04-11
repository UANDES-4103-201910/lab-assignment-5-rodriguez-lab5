Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/create' => 'users#create'
  get 'users/:id/destroy' => 'users#destroy'
  get 'users/:id/update' => 'users#update'

  get 'events/create' => 'events#create'
  get 'events/:id/destroy' => 'events#destroy'
  get 'events/:id/update' => 'events#update'
  
  get 'event_venues/create' => 'event_venues#create'
  get 'event_venues/:id/destroy' => 'event_venues#destroy'
  get 'event_venues/:id/update' => 'event_venues#update'
  
  get 'ticket_types/create' => 'ticket_types#create'
  get 'ticket_types/:id/destroy' => 'ticket_types#destroy'
  get 'ticket_types/:id/update' => 'ticket_types#update'
  
  get 'tickets/create' => 'tickets#create'
  get 'tickets/:id/destroy' => 'tickets#destroy'
  get 'tickets/:id/update' => 'tickets#update'
  get '/tickets/' => 'tickets#index'
  

  resources :ticket_types do
  	resources :tickets
  end

  get 'ticket_types/:id/tickets' => 'tickets#index'
  get 'ticket_types/:id/tickets/create' => 'tickets#create'
  get 'ticket_types/:id/tickets/:id/update' => 'tickets#update'
  get 'ticket_types/:id/tickets/:id/destroy' => 'tickets#destroy'
  
end
