TaskManagement::Application.routes.draw do
  root :to=> "home#index"
  match "", :to=>"home#index"
end
