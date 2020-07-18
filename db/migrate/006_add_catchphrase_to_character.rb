class AddCatchphraseToCharacter < ActiveRecord::Migration[5.1]
    #to make an additive change to a schema we create
    #a new migration, and then in the change method,
    #we make the change.
    #define a change method in which to do the migration
  def change
    add_column :characters, :catchphrase, :string
  end
end