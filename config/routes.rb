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

	match 'new_question' => "main#new_question", :as => 'new_question'
	match 'question' => "main#question", :via => [:post], :as => 'question'
	match 'new_rsvp' => "main#new_rsvp", :as => 'new_rsvp'
	match 'rsvp' => "main#rsvp", :via => [:post], :as => 'rsvp'

	match 'company' => "main#company", :as => 'company'

	root :to => "main#index"	
end
