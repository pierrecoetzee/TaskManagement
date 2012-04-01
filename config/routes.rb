TaskManagement::Application.routes.draw do
  root :to=> "home#index"
  match "", :to=>"home#index", :as => "home"


  match "tasklist",:to => "task#index" , :as => "task_list"

  match "new_task", :to => "task#new" , :as => "new_task"
  match "create_task", :to => "task#create" , :as => "create_task"
  match "delete_task/:id" ,:to => "task#delete", :as => "delete_task"
  match "edit_task/:id", :to => "task#edit" , :as => "edit_task"
  match "update_task/:id", :to => "task#update" , :as => "update_task"
  
end
