Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

#  get "/", to: "posts#index"
  root to: "posts#index" ##posts controller in index method
  get "posts/new", to: "posts#new", as: "posts_new"##set up route that listens for a get request,
                                                   ##if has that route, goes to posts_controller new method
  ##^^url route specifies to go to posts_controller.rb and go to 'new' method in class

  post "posts", to: "posts#create", as: "posts"

  #Add a route to edit a specific post. It should have a route parameter.
  get "posts/:id/edit/", to: "posts#edit", as: "edit_post"#displays # :id is route parameter
  put "posts/:id", to: "posts#update", as: "post"#changes data in db
  get "posts/:id", to: "posts#show" # as: post - not needed because same route as update
  delete "posts/:id", to: "posts#destroy" # as: post


  

  #create comment
  # get "posts/:id/comments/new", to: "comments#new", as: "comments_new"
  #
  # <%= link_to("New comment", comments_new_path(post)) %>

  #resources :posts -creates the 7, then use Rake Routes to see



  #7 methods in controllers
  #index, new/create, edit/update, show, destroy




  #
  # root to: "posts#index"
  #   get "posts/new", to: "posts#new", as: "posts_new"
  #   post "posts", to: "posts#create"
  #
  #   get "posts/:id/edit", to: "posts#edit", as: "edit_post"
  #   put "posts/:id", to: "posts#update", as: "post"
  #   get "posts/:id", to: "posts#show"
  #   delete "posts/:id", to: "posts#destroy"












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
