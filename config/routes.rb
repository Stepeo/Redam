Rails.application.routes.draw do
  get 'recipes/index'

  get 'recipes/show'

  get 'recipes/new'

  get 'recipes/create'

  get 'recipes/edit'

  get 'recipes/update'

  get 'recipes/destroy'

  get 'recipes/find_recipe'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :recipes do
    collection do
      get 'search', :as => :search
    end
  end
  root 'recipes#index'




end
