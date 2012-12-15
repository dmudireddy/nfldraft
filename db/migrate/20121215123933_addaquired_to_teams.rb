class AddaquiredToTeams < ActiveRecord::Migration
  def up
    add_column :teams,:acquiredplayer,:string
  end

  def down
  end
end
