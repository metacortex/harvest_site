Harvest::Application.routes.draw do
	match 'login' => "users#login"
	match 'logout' => "users#logout"

	resources :users do
		post :create_session, :on => :collection
	end

	resources :sections do 
		resources :folders do
			post :sort, :on => :collection
			resources :pages
			resources :boards do
				resources :posts
			end
		end
	end

	resources :questions, :comments, :assets
	
	match "editor/:action", :controller => :editor, :as => :editor, :via => [:get, :post]

	root :to => "main#index"	
end
