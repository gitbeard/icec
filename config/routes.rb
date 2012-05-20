Icec::Application.routes.draw do
  resources :tops_qualifiers

  resources :tops_questions

  resources :tops_forms do
    get :tops_form, on: :member
    get :tops_form2, on: :member
    post :tops_form, on: :member
    post :tops_form2, on: :member
  end
  
  resources :email_messages do
    get :preview_email, on: :member
  end

  resources :daily_notes

  resources :child_dailies do
    resources :tops_forms #hmm not working for me
    get :tops_report, on: :member
    post :tops_report, on: :member
  end

  resources :children

  match 'take_attendance' => 'child_dailies#take_attendance'
  match 'roll_call' => 'child_dailies#roll_call'
  match 'indexnames' => 'child_dailies#indexnames'
  match 'generate_emails' => 'email_messages#generate_emails'
  #get 'preview_email' => 'email_messages#preview_email'   # This worked but I wasn't passing param ?
  # match 'tops_form' => 'tops_forms#tops_form'

  
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
