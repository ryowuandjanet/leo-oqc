Rails.application.routes.draw do
    resources :oqclists
    root "oqclists#index"
end
