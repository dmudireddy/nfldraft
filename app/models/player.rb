class Player < ActiveRecord::Base
  attr_accessible :playername, :position
  belongs_to :team
  
  def self.playercount
    Player.count
  end

end
