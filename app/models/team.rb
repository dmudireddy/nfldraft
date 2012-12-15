class Team < ActiveRecord::Base
  attr_accessible :division, :teamname
  has_one :order
 
end
