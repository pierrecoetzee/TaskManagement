class Task

  include Mongoid::Document
  include Mongoid::Timestamps

  field :name,  type: :String
  field :description, type:  String
  field :completion_date, type:  DateTime
  field :completion_state, type: Integer, :default => 0
  
  embedded_in :user

  validates_presence_of :name

end
