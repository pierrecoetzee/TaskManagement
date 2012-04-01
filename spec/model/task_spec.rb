require 'spec_helper'

describe Task do
    before(:each) do
       @attr = {
        :description => "Some lion taming experience coming up"       
      }
    end

  it "should create an invalid task" do
    task = Task.new @attr
    task.should_not be_valid
  end

  it "should create a new task" do
    task = Task.new @attr.merge(@attr.merge(:name => "some name on the task" ))
    task.should be_valid
  end
end
