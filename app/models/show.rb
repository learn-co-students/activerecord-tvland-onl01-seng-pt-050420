class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network

    def actors_list
        self.characters.collect do |a|
            "#{a.actor.first_name} #{a.actor.last_name}"
            # binding.pry
        end
    end
end