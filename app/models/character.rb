class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def catchphrase
    "#{self.name} - #{self.catchphrase}"
  end
end
