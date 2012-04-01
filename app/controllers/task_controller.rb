class TaskController < ApplicationController
  def index   
    @user = User.first
  end

  def new
    add_edit
  end

  def edit  
    @task = User.first.tasks.find(params[:id])
    render :action => :new
  end

  def update
     
     task = User.first.tasks.find(params[:id])
     task.update_attributes(params[:task])
     task.save
     excluded = User.first.tasks.select{|t| t if t.id.to_s!= params[:id] }
     User.first.tasks = excluded
     User.first.tasks << task          
     User.first.save

     @user = User.first     
     render :action => :index
  end

  def create
    @task = Task.new params[:task]
    @user = User.first
    
    if @task.valid?
      @user.tasks.push @task
      @user.save
      return redirect_to :action => :index 
    end
    render :action => :new
  end

  def delete
     puts "There are #{User.last.tasks.length}"
     tasks = User.first.tasks.select{|t| t if t.id.to_s!= params[:id] }
     User.last.tasks = tasks     
     User.last.save
     puts "There are #{User.last.tasks.length}"
     @user = User.first
     render :action => :index
  end

  private 
  def add_edit
    @task = Task.new
  end
end
