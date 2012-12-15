class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :playername
      t.string :position

      t.timestamps
    end
  end
end
