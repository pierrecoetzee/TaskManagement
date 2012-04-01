TaskManagement::Application.routes.draw do
  root :to=> "home#index"
  match "", :to=>"home#index", :as => "home"


  match "tasklist",:to => "task#index" , :as => "task_list"
  
end
