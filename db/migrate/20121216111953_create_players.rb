class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :playername
      t.string :position
      t.integer :team_id
      t.boolean :picked,:default => false

      t.timestamps
    end
  end
end
