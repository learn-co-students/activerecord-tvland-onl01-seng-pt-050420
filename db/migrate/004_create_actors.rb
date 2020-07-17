class CreateActors < ActiveRecord::Migration[5.1]
    #to make an additive change to a schema we create
    #a new migration, and then in the change method,
    #we make the change.
    #define a change method in which to do the migration
  def change
    create_table :actors do |t| #we get a block variable here for the table
      #primary key of :id is created for us!
      # defining columns is as simple as t.[datatype] :column
      t.string :first_name
      # the above breaks down to
      # "create a column called :first_name on table t with type string
      t.string :last_name 
      # the above breaks down to
      # "create a column called :last_name on table t with type string
    end
  end
end
  