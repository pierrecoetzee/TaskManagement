class Task

  include Mongoid::Document
  include Mongoid::Timestamps

  field :name,  type: :String
  field :description, type:  String
  field :completion_date, type:  DateTime
  field :completion_state, type: Integer, :default => 0
  
  embedded_in :user

  validates_presence_of :name
  validate :date_ok?

  def date_ok?
    unless completion_date.is_a?(Date) 
      self.errors.add(:completion_date,"this is not a valid date")
    end
  end

end
