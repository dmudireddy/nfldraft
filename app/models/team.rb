

class Team < ActiveRecord::Base
  # set_primary_key :teamname
  attr_accessible :division, :teamname
  has_many :players
   has_many :orders
 
   def acquire(player_id)
    player =  Player.find_by_id(player_id)
     # puts"Before picking player is assigned to #{player.team_id}"
    player.team_id = self.id
      # player.team_id = team_id
    player.picked = true
    player.save
    # player_aftersave = Player.find_by_id(player.id)
    # puts"After picking Player is picked by team #{player_aftersave.team_id}"

  end
end