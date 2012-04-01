require 'spec_helper'

describe TaskController do
  
   before(:each) do
      @user = User.new({:user_name => "Pierre coetzee"} )     
      @task = Task.new({:name=>"The task at hand", :description => "some description..."})
   end
  
   describe '#create' do
      context 'given a valid task is being created' do
        it "creates a new task" do
           c = @user.tasks.length
           post 'create' , :task =>{:name=>"test", :description => "something to post"}
           @user.tasks.length == c+1
        end
      end
   end
end
