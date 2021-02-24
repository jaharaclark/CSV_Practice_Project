require 'CSV'

class StatTracker
  def self.from_csv(locations)
    CSV.foreach(locations[:games], headers: true, header_converters: :symbol) do |row|
      # id = row[:id].to_i
      away_team_id = row[:away_team_id].to_i
      # require 'pry'; binding.pry
    end
  end

  def self.count_of_teams(locations)
    counter = 0
    CSV.foreach(locations[:teams], headers: true, header_converters: :symbol) do |row|
      counter += 1
    end
    puts counter
    return counter
  end
  
end

# make a module for later


# need an analytic class
# create a bunch of methods utilizing the data from that class 
# important distinction? stat Tracker lives at the top of the hierarchy
# traversing the parallels (everything will know about itself) will need to get into the stat tracker and then stat tracker will reach into the other things

  
# def best_season(team_id)
# games - sortby - season
# end

# best_season(3)

