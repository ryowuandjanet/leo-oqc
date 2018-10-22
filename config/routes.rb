Rails.application.routes.draw do
    resources :oqclists do
        resources :oqcitems, :controller => "oqclist_oqcitems"
    end
    resources :products, :controller => "products"
    root "oqclists#index"
end
