Rails.application.routes.draw do
  devise_for :users,  path_names: {sign_in: "login", sign_out: "logout"},
             controllers: {registrations: "users/registrations", sessions: "users/sessions"}

  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  post '/html_test' => 'church_apps#html_test'
  # resources :church_apps do
  get '/html_report' => 'church_apps#html_report'

  post '/generate' => 'church_apps#generate'
  # end
end
