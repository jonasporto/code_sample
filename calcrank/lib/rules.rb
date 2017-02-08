class Rules
  
  private_class_method :new

  POINTS_FOR_WINNER = 3
  POINTS_FOR_DRAW   = 1

  def self.get_points(player_1, player_2)
    
    winner_or_draw = player_1.scored_goals <=> player_2.scored_goals
      
    player_1.points, player_2.points = 
      case winner_or_draw
      when 1
        [Rules::POINTS_FOR_WINNER, 0]
      when 0
        Array.new(2, Rules::POINTS_FOR_DRAW)
      when -1
        [0, Rules::POINTS_FOR_WINNER]
      end
    
    return player_1, player_2
  end
end
