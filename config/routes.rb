Deluxe::Application.routes.draw do

  root :to => redirect("/#{I18n.locale}")
  match ':lang'  => 'site#index', :as  => :index
  match '(:lang)/savoir'  => 'site#savoir', :as  => :savoir
  match '(:lang)/langues_de_traduction'  =>  'site#langues', :as  =>  :langues
  match '(:lang)/services'  => 'site#service', :as  => :services
  match '(:lang)/contact'  =>  'site#contact', :as  => :contact
  match '(:lang)/news'  =>  'site#news', :as  =>  :news
  match '(:lang)/mention'  =>  'site#mention', :as  => :mentions
  match '(:lang)/permanence_telephonique'  =>  'site#permanence', :as  => :permanence
  match '(:lang)/secretariat'  =>  'site#secretariat', :as  => :secretariat
  match '(:lang)/tarifs'  =>  'site#tarifs', :as  => :tarifs
  match '(:lang)/references'  =>  'site#references', :as  => :references
  match '(:lang)/refslist'  =>  'site#refslist', :as  => :refslist
  match '(:lang)/conditions_generales_de_vente'  =>  'site#conditions', :as  => :conditions
  match '(:lang)/contact_email'  =>  'site#send_contact_email', :as  => :contact_email
  match '(:lang)/permanence_email'  =>  'site#send_permanence_email', :as  => :permanence_email

  
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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
