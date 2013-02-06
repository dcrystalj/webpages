Estudent::Application.routes.draw do

  ############
  match 'user' => "user#show"
  match 'user/show' => "user#show"
  match 'user/marks' => "user#marks"
  match 'user/check' => "user#check"
  match 'user/check/create' => "user#checkCreate"
  match 'user/checkout' => "user#checkout"
  match 'user/checkout/delete' => "user#checkoutDelete"
  ############
  match 'admin' => "admin#show"
  match 'admin/show' => "admin#show"
  match 'admin/examon' => "admin#examon"
  match 'admin/examon/update' => "admin#examonUpdate"
  match 'admin/examoff' => "admin#examoff"
  match 'admin/examoff/update' => "admin#examoffUpdate"
  match 'admin/inputmarks' => "admin#inputmarks"
  match 'admin/inputmarks/create' => "admin#inputmarksCreate"
  match 'admin/register' => "admin#register"
  match 'admin/register/create' => "admin#registerCreate"
  ############

  match 'logout' => "login#logout"

  match 'login' => "login#index"
  match 'login/create' => "login#create"
  match 'login/insert' => "login#insert"

  root :to => 'login#index'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
