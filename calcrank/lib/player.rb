class Player

  attr_accessor :name, :scored_goals, :points

  def initialize(name:, scored_goals: 0, points: 0)
    @name         = name.strip
    @scored_goals = scored_goals
    @points       = points
  end
end