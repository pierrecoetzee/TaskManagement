class TaskController < ApplicationController
  def index
    throw "There are no users in your Mongo database - please run rake db:seed" if User.all.length==0
    @user = User.all.first
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new params[:task]
    @user = User.all.first
    
    if @task.valid?
      @user.tasks.push @task
      @user.save
      return redirect_to :action => :index 
    end
    render :action => :new
  end

  def delete
     @task = Task.find( params[:task])
     throw @task
     @user = User.all.first
  end
end
