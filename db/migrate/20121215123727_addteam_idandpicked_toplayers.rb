class AddteamIdandpickedToplayers < ActiveRecord::Migration
  def up
     add_column :players,:picked,:boolean,:default => false
     add_column :players,:team_id,:integer
  end

  def down
  end
end
