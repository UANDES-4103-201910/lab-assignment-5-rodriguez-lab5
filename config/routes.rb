Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'users/create' => 'users#create'
  delete 'users/:id/destroy' => 'users#destroy'
  patch 'users/:id/update' => 'users#update'

  post 'events/create' => 'events#create'
  delete 'events/:id/destroy' => 'events#destroy'
  patch 'events/:id/update' => 'events#update'
  
  post 'event_venues/create' => 'event_venues#create'
  delete 'event_venues/:id/destroy' => 'event_venues#destroy'
  patch 'event_venues/:id/update' => 'event_venues#update'
  
  post 'ticket_types/create' => 'ticket_types#create'
  delete 'ticket_types/:id/destroy' => 'ticket_types#destroy'
  patch 'ticket_types/:id/update' => 'ticket_types#update'
  
  post 'tickets/create' => 'tickets#create'
  delete 'tickets/:id/destroy' => 'tickets#destroy'
  patch 'tickets/:id/update' => 'tickets#update'
  
end
