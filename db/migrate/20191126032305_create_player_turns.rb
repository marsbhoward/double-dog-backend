class CreatePlayerTurns < ActiveRecord::Migration[6.0]
  def change
    create_table :player_turns do |t|
      t.integer :player_id
      t.integer :dare_id

      t.timestamps
    end
    add_index :player_turns, :player_id
    add_index :player_turns, :dare_id
  end
end
j