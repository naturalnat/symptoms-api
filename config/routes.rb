Rails.application.routes.draw do
  resources :symptoms do
    member do
      post :addflag
    end
  end

  # post '/symptoms/addflag/:id' => 'symptoms#addflag'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
