class CreateCharacters < ActiveRecord::Migration[5.1]
  
  def change
    create_table :characters do |column|
      column.string :name 
      column.integer :actor_id 
      column.integer :show_id
    end
  end
  
end