Rails.application.routes.draw do

    resources :sessions do
      collection { post :import }
    end

    root to: "sesions#index"
  end
