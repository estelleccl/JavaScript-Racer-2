class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :score
      
      t.timestamps
    end  
  end
end
