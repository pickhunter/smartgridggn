Rails.application.routes.draw do

  get 'mpgoi/about'

  get 'mpgoi/responsibilites'

  get 'dhbvn/misson'

  get 'dhbvn/vision_and_values'

  get 'dhbvn/board_of_directors'

  get 'about-us', to:'static_pages#about', as: 'about_us'
  get 'news', to:'static_pages#news', as: 'news'
  get 'vendor', to:'static_pages#vendor', as: 'vendor'
  get 'dhbvn', to:'static_pages#dhbvn', as: 'dhbvn'
  get 'power-government-of-haryana', to:'static_pages#pgoh', as: 'pgoh'
  get 'ministry-power-government-of-india', to:'static_pages#mpgio', as: 'mpgio'
  get 'specification', to:'static_pages#specification', as: 'specification'
  get 'contact-us', to: 'static_pages#contact_us', as: 'contact_us'

  root to: 'home#index'

  get 'home/index'

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
