class TaskController < ApplicationController
  def index
    throw "There are no users in your Mongo database - please run rake db:seed" if User.all.length==0
    @user = User.all.first
  end
end
