class Order < ActiveRecord::Base
  attr_accessible :pick, :player_id, :round, :team_id
  belongs_to :player
  belongs_to :team
  validates_presence_of :pick,:round
  validates_uniqueness_of :pick
  validates_numericality_of :pick,:round
end
