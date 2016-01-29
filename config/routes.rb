Rails.application.routes.draw do
  get 'public_cards/new'

  get 'public_cards/edit'

  get 'public_cards/show'

  get 'public_cards/index'

  get 'profiles/new'

  get 'profiles/edit'

  get 'profiles/show'

  get 'profiles/index'

  get 'private_cards/new'

  get 'private_cards/edit'

  get 'private_cards/show'

  get 'private_cards/index'

  get 'quizes/new'

  get 'quizes/edit'

  get 'quizes/show'

  get 'quizes/index'

  get 'questions/new'

  get 'questions/edit'

  get 'questions/show'

  get 'questions/index'

  get 'public/Cards'

  get 'public/new'

  get 'public/edit'

  get 'public/show'

  get 'public/index'

  get 'profile/new'

  get 'profile/edit'

  get 'profile/show'

  get 'profile/index'

  get 'private_card/new'

  get 'private_card/edit'

  get 'private_card/show'

  get 'private_card/index'

  get 'levels/new'

  get 'levels/edit'

  get 'levels/show'

  get 'levels/index'

  get 'cards/new'

  get 'cards/edit'

  get 'cards/show'

  get 'cards/index'

  devise_for :users, controllers: { registrations: 'users/registrations', passwords: 'users/passwords' }

  devise_for :admins

  root "devise/sessions#new"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
