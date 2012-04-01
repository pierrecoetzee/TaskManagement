class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_users
  
  def check_users
      if User.all.length==0
       User.create(:user_name => "Test person")       
       User.last.tasks.push Task.new(:name => "Do some cool task", :completion_date => Date.today.advance(:days=>7) )
       User.last.tasks.push Task.new(:name => "Do some cool task", :completion_date => Date.today.advance(:days=>-17) )
       User.last.tasks.push Task.new(:name => "Do some cool task", :completion_date => Date.today )
       User.last.save
       
    end
  end
end
