namespace :simulate do
 $i = 1
 $total_order = 256
p = 1
  task :order => :environment do
 
   pickedorder =  pick_next_order(Order)
   puts"ORDERprint:#{ pickedorder.team}"
   
    $teamname = pickedorder.team
   # firstround_allpicks = Order.find(:all,:conditions => {:round => "1"})
   # firstround_allpicks.each do |o|
    # # puts"#{o.pick},#{o.teamname}"
   # firstround_all_picks
   
   
   # end
   $player = nextplayer_to_be_picked(Player)
   
     
  end
  task :team => :environment do
    
    $teamobject = teambytheorderlist($teamname,Team)
    puts "TEAMprint:teamobject teamname #{$teamobject.class}"
    
  end
  task :all => [:order, :team]
  task :player => :environment do
   nextplayer_to_be_picked(Player)
    
  end
    def teambytheorderlist(teamn,teammodel)
          
    puts " TEAMprint:team name is #{teamn}"
    puts " TEAMprint:count of teammodel is #{teammodel.count}"
    $teamobject = Team.find('Buffalo Bills')
 
    
    # first,:conditions => {:teamname => "Louis Rams"})
      # t= teamobjects[0]
     
     
    end
  def pick_next_order(ordermodel)
     firstpick = ordermodel.find(:first)
       $firstpick_teamname = firstpick.team
     puts"First team from the order list to pick a player:#{firstpick.team}"
     firstpick = ordermodel.find(:first)
    end
    def nextplayer_to_be_picked(playermodel)
       total_players = playermodel.playercount
    player = playermodel.find(:first)
    #puts "#{total_players}"
    # player = pick_next(Player)
    puts"Next player to be picked is : #{player.playername}"
    player = playermodel.find(:first)
    end
 
  
end