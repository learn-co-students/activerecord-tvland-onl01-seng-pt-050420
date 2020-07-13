class CreateActors < ActiveRecord::Migration[5.1]

  def change 
    create_table :actors do |column|
      column.string :first_name
      column.string :last_name
    end
  end

end