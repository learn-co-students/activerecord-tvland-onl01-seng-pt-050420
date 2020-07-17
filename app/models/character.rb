class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show
    
    def catchphrase
        "A Lannister always pays his debts"
    end 
    
    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end 

end