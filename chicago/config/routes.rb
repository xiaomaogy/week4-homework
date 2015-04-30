Rails.application.routes.draw do

  root 'places#index'

  get '/places' => 'places#index' , :as =>'index_places_url'
  get '/places/new' => 'places#new', :as =>'new_places_url'
  post '/places' => 'places#create', :as =>'create_places_url'
  get '/places/:id' => 'places#show', :as => 'show_places_url'
  delete '/places/:id' => 'places#destroy', :as => 'destroy_places_url'
  get '/places/:id/edit' => 'places#edit', :as =>'edit_places_url'
  patch '/places/:id' => 'places#update', :as => 'update_places_url'

  post '/reviews/:place_id'  => 'reviews#create', :as =>'create_reviews_url'

end
