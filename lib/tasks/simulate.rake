
namespace :simulate do
      
  task :order => :environment do
 @offset_array = [0,0,0,0,0,0,0]
 @limit_array = [0,0,0,0,0,0,0]
for @round_i in 1..7
  @nthround_teams = pick_nthround_teams(Order,@round_i)
  @offset = @limit_array.inject(0){|sum,item|sum + item}
  @limit_array[@round_i-1] = @nthround_teams.count
 if @round_i == 0
    @offset_array[0] = 0
    
    elsif @round_i > 1
    @offset_array[@round_i -1] = @offset
    puts " OFFSET: #{@offset_array[@round_i -1]}"
  end #if for roundloop
  @players = pick_players(Player,@limit_array[@round_i-1],@offset_array[@round_i-1])
 # puts " Players names from @players"
 # @players.each do|p| 
   # puts " #{p.id},#{p.playername}"
 # end
  if @players.count == @limit_array[@round_i-1]
   # puts " Number of players picked is eq to num of teams picked "  
  end #if for print
  @count = 0
   # find_teamobject_fromteamTable(@nthround_teams)
   (1..@limit_array[@round_i-1]).each do |i|
     @count = @count+1
    # puts" ROUND & PICK : round_i : #{round_i}, i #{i}:"
    @order_teamname = @nthround_teams[i-1].team
       @team_picked = find_teamobject(@order_teamname,Team)
       puts"Team that has a chance to pick now :#{@team_picked.teamname}"
       # if @order_teamname == @team.teamname
         # puts " Count is : #{@count},teamnames and lengths are same in both orders and teams tables"
       # else
         # puts "teamnames and lengths are not similar,Count is : #{@count} "
       # end
         @player_picked = @players[i-1]
     puts" Player picked in round: #{@round_i}, pick : #{i} is #{@player_picked.playername}"
     # @team_picked.acquire(@player_picked.id,@team_picked.id) 
          @team_picked.acquire(@player_picked.id) 
    #sleep(2)
   end 
   end #for loop
     
  end #task order env
  task :team => :environment do 
  end #task order env
  task :all => [:order, :team] 
  def pick_nthround_teams(ordermodel,round_i)
      
       ordermodel.find(:all,:conditions => {:round => round_i})   
    end
    def pick_players(player,limit,offset)
      
      players = player.limit(limit).offset(offset)
    
    end
    def find_teamobject(teamname,teammodel)  
      team = teammodel.find_by_teamname(teamname)
    end
    def find_teamobject_fromteamTable(nthroundteams)
      
    end
end #namespace