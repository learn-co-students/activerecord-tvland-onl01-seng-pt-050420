class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actor, through: :characters

  def actors_list
    actor.collect do |a|
        # "#{a.first_name} #{a.last_name}"
        a.full_name
    end
  end
end