class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :score, :default =>0
      t.integer :shots, :default =>0	
      t.integer :game_id 

      t.timestamps
    end
    add_index :players, :game_id
  end
end
