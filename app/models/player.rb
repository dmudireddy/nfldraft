class Player < ActiveRecord::Base
  attr_accessible :playername, :position
  has_one :order
end
