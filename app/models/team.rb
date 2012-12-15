class Team < ActiveRecord::Base
  set_primary_key :teamname
  attr_accessible :division, :teamname
  has_many :players
  
   def acquire(player,team)
    player.picked = "true"
    puts"Player.picked needs to be #{player.picked}"
    player.team_id = team.id
    puts " Player has updated its team as #{team.id}"
    
    
    
  end
end
