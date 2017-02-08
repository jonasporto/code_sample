class RankingBoard
  
  def initialize
    @players = {}
  end

  def <<(players)
    players.each do |player|
      @players[player.name] = @players[player.name].to_i + player.points
    end
  end

  def to_s
    sort_rank.join("\n")
  end

  private

  def sorted_players
    Array(@players.sort_by(&:last).reverse)
  end

  def sort_rank
    rank, last_points = 0, []        
    sorted_players.each do |name, points|
      rank += 1 unless last_points == points
      last_points = points
      results << result_to_s(rank, name, points)
    end

    results
  end

  def result_to_s(rank, name, points)
    result = "#{rank}. #{name}, #{points}"
    result << (points == 1 ? " pt " : " pts ")
    result
  end

  def results
    @_results ||= []
  end
end
