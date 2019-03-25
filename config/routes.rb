Rails.application.routes.draw do
  resources :faculties
  get 'studentinfo/index'
  get 'placements/index'
  get 'faculties/index'
  get 'department/index'
  get 'aboutus/index'
  get 'home/index'
  get 'home/show'
  get 'home/new'
  get 'home/edit'
  get 'home/delete'
  #get'studentinfos/index'
  resources:home do
  	collection{post :import}
  end
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
