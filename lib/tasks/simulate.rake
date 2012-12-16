
namespace :simulate do
    $i = 0  
  task :order => :environment do
    $offset_array = Array.new
      $offset_array[0] = 0
  for round_i in 1..3 
  orders_teams_round = draft_order_round(Order,round_i)
 numof_teams_this_round = orders_teams_round.count
 $offset_for_next_round = numof_teams_this_round
  (1..(orders_teams_round.count)).each do |i|
    puts" ROUND : #{round_i}, PICK #{i}:"
    order_teamname = orders_teams_round[i-1].team
       team = get_teamobject(order_teamname,Team)
       player = nextplayer_to_be_picked(Player,round_i,numof_teams_this_round )
     puts"Team to pick :#{order_teamname},team_id:#{team.id},player_id :#{player.id}"
     team.acquire(player.id,team.id) 
    #sleep(2)
   end
  puts"$OFFSET for #{round_i}:#{$offset}, num_of_teams in this round : #{orders_teams_round.count}"
  $offset_array[round_i] = $offset_array[round_i-1] + numof_teams_this_round
   end #for loop
  end
  task :team => :environment do 
  end
  task :all => [:order, :team] 
    def draft_order_round(ordermodel,round_i)
      puts"Round_i : #{round_i}"
       ordermodel.find(:all,:conditions => {:round => round_i})   
    end
     def get_teamobject(teamname,teammodel)
       team = teammodel.find_by_teamname(teamname)
       # team_id = team.id
     end
    def nextplayer_to_be_picked(playermodel,round_i,numof_teams_this_round)
    # players = playermodel.find(:all,:order => "id asc",:limit => 32)
       players = playermodel.limit(numof_teams_this_round).offset($offset_array[round_i-1])
       puts"numof_teams_this_round :#{numof_teams_this_round},players.count :#{players.count}"
      # puts "players[0]: #{players[0].playername}"
      # if round_i == 1
       if $i < numof_teams_this_round
         @player = players[$i] 
           puts"Now the  player to be picked is : #{@player.playername}" 
         puts " $i : #{$i}"
         $i = $i+1
      end
    @player 
    end
end