class Order < ActiveRecord::Base
  attr_accessible :pick, :round, :team, :team_id
   # belongs_to :team 
end
