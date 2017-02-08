class PlayerParser
  
  private_class_method :new

  def self.execute(player)
    {
      name:   name(player), 
      scored_goals: points(player)
    }
  end

  def self.name(player)
    player[0..-2].strip
  end

  def self.points(player)
    player[-1].to_i
  end
end
