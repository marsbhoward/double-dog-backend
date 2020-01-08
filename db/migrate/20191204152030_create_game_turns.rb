class CreateGameTurns < ActiveRecord::Migration[6.0]
  def change
    create_table :game_turns do |t|
      t.integer :game_id, null: false, foreign_key: true
      t.integer :player_turn_id, null: false, foreign_key: true

      t.timestamps
    end
    add_index :game_turns, :game_id
    add_index :game_turns, :player_turn_id
  end
end
