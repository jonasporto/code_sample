class RankingBoard
  
  def initialize
    @players = Hash.new(0)
  end

  def <<(players)
    players.each do |player|
      @players[player.name] += player.points
    end
  end

  def to_s
    rank_results.join("\n")
  end

  def rank_results
    counter = OpenStruct.new(rank: 0, points: 0, results: [])
    
    ranked_players.inject(counter) do |ctr, (name, points)|
      
      ctr.rank += 1 unless ctr.points == points
      ctr.results << formatted_result(ctr.rank, name, points)
      
      ctr.points = points
      ctr
    end.results
  end

  private

  def ranked_players
    @players.sort_by(&:last).reverse
  end

  def formatted_result(rank, name, points)
    result = "#{rank}. #{name}, #{points}"
    result << (points == 1 ? " pt" : " pts")
    result
  end
end
