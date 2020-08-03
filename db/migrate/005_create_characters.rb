class CreateCharacters < ActiveRecord::Migration[5.1]
    #to make an additive change to a schema we create
    #a new migration, and then in the change method,
    #we make the change.
    create_table :characters do |t|
        t.string :name
        t.string :actor_id
        t.string :show_id
        t.string :catchphrase
    end
end