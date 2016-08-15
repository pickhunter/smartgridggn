Rails.application.routes.draw do

  get 'smart_grid/what'

  get 'smart_grid/existing'

  get 'smart_grid/need'

  get 'smart_grid/main_features'

  get 'smart_grid/phases'

  get 'mpgoi/about'

  get 'mpgoi/responsibilites'

  get 'dhbvn/misson'

  get 'dhbvn/vision_and_values'

  get 'dhbvn/board_of_directors'

  get 'dhbvn/faq'

  get 'dhbvn/org-structure'
  get 'dhbvn/posts'

  get 'about-us', to:'static_pages#about', as: 'about_us'
  get 'smartgrid', to:'static_pages#smart_grid', as: 'smart_grid'
  get 'news', to:'static_pages#news', as: 'news'
  get 'tenders', to:'static_pages#tender', as: 'tender_list'
  get 'dhbvn', to:'static_pages#dhbvn', as: 'dhbvn'
  get 'under-construction', to: 'static_pages#under_construction', as: 'under_construction'
  get 'power-government-of-haryana', to:'static_pages#pgoh', as: 'pgoh'
  get 'ministry-power-government-of-india', to:'static_pages#mpgio', as: 'mpgio'
  get 'specification', to:'static_pages#specification', as: 'specification'
  get 'contact-us', to: 'static_pages#contact_us', as: 'contact_us'
  get 'smart-grid-project-gurgaon', to: 'static_pages#smart_grid_project_gurgaon', as: 'smart_grid_project_gurgaon'
  get 'associated-sites', to: 'static_pages#associated_sites', as: 'associated_sites'
  get 'downloads', to: 'static_pages#downloads', as: 'downloads'
  get 'prebid-conf-1', to: 'static_pages#prebid_conf_1', as: 'prebid_conf_1'


  root to: 'home#index'

  get 'home/index'

  scope '/admin', module: :admin do
    resources :updates
    resources :tenders
  end

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
