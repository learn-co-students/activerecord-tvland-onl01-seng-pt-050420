class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
    has_many :actors, through: :characters


    def actors_list

        actor = []
        list = []
       actors.each { |i| actor << i.first_name << i.last_name
        list << actor.join(" ") }
        list
        #binding.pry
    end 
end