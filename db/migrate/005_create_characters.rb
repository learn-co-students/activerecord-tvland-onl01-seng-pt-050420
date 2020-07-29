class CreateCharacters < ActiveRecord::Migration[5.2]
    def change
        create_table :characters do |t|
            t.string :name
            t.integer :actor_id     #a character will belong to a show (the show migration is already provided) and an actor, and we'll keep track of this relationship with these database table columns.
            t.integer :show_id
        end
    end
end

