class Player < ActiveRecord::Base
  attr_accessible :picked, :playername, :position, :team_id
  
  belongs_to :team
   def self.playercount
    Player.count
  end
end
