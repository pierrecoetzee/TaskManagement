class User
  include Mongoid::Document
  field :user_name , type: String
  
  embeds_many :tasks do 
    def that_expired      
      self.select{|t|t.completion_date <= DateTime.now && t.completion_state == 0 }
    end
   
    def not_signed_off
      self.select{|t|t.completion_state == 0}      
    end
  end


end

