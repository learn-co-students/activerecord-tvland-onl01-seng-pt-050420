class Show < ActiveRecord::Base
    has_many :actors, through: :shows
    belongs_to :network
    has_many :characters

    def actors_list
        self.characters.map{|i| i.actor.full_name}
    end
end