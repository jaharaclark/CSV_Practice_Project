class StatTracker
  def self.from_csv(locations)
    require 'CSV'
    CSV.foreach(locations[:games], headers: true, header_converters: :symbol) do |row|
      # id = row[:id].to_i
      away_team_id = row[:away_team_id].to_i
      require 'pry'; binding.pry
    end
  end
end