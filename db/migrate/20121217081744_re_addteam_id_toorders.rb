class AddteamIdToorders < ActiveRecord::Migration
  def up
    add_column :orders,:team_id,:integer
  end

  def down
  end
end
