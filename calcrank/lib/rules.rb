class Rules
  
  private_class_method :new

  POINTS_FOR_WINNER = 3
  POINTS_FOR_DRAW   = 1

  def self.get_points(player_1, player_2)
    
    winner_or_draw = player_1.scored_goals <=> player_2.scored_goals
      
    case winner_or_draw
    when 1
      player_1.points = Rules::POINTS_FOR_WINNER
    when 0
      player_1.points = Rules::POINTS_FOR_DRAW
      player_2.points = Rules::POINTS_FOR_DRAW
    when -1
      player_2.points = Rules::POINTS_FOR_WINNER
    end
    
    return player_1, player_2
  end
end
