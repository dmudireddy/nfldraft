class Addacquiredplayer < ActiveRecord::Migration
  def up
    add_column :teams,:acquiredplayer,:string
  end

  # def down
    # remove_column :teams,:acquiredplayer
  # end
end
