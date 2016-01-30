Rails.application.routes.draw do

  devise_for :users

  #this defines the scope for devise with users
  #if logged in, will root to users index
  #write some actions to say if not logged in go to log in or signup page
  #still have to figure out how to have root of site go to landing page.
  #basically the root to is what devise looks to go after signining in or up.
  devise_scope :user do
    root to: "users#index"
  end
  # devise_scope :user do
  #  get "signup", to: "devise/registrations#new"
  #  get "login", to: "devise/sessions#new"
  #  get "logout", to: "devise/sessions#destroy"
  # end
  devise_for :admins

  #restful routing for all other controllers that don't require devise

  #we need this one so we can control what is shown for the users, using devise helpers 
  #(these views are not devise generated)
  resources :users

  resources :cards
  resources :levels
  resources :private_cards
  resources :public_cards
  resources :questions
  resources :quizzes

  #root page is the sign in page for a user




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
