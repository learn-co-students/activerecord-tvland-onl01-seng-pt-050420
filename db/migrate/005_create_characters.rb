class CreateCharacters < ActiveRecord::Migration[5.1]
    #to make an additive change to a schema we create
    #a new migration, and then in the change method,
    #we make the change.
    #define a change method in which to do the migration
  def change
    create_table :characters do |t| #we get a block variable here for the table
      #primary key of :id is created for us!
      # defining columns is as simple as t.[datatype] :column
      t.string :name
      # the above breaks down to
      # "create a column called :first_name on table t with type string
      t.integer :actor_id 
      # the above breaks down to
      # "create a column called :actor_id on table t with type integer
      t.integer :show_id 
      # the above breaks down to
      # "create a column called :show_id on table t with type integer
    end
  end
end