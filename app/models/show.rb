class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network

    def actors_list
        actor_id_list = self.characters.collect {|c| c.actor_id }
        actor_list = []
        actor_id_list.each do |actor_id|
            actor = Actor.find_by(id: actor_id)
            actor_list << actor.full_name
        end
        actor_list
    end
  
end