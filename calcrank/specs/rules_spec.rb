require "minitest/autorun"
require_relative "test_helper"

describe Rules do
  
  describe ".getpoints" do

    it "When first player wins, must return 3 points for player 1 and 0 for player 2" do

      player_1 = Player.new(name: 'player 1', scored_goals: 1)
      player_2 = Player.new(name: 'player 2', scored_goals: 0)
      
      player_1, player_2 = Rules.get_points(player_1, player_2)
     
      player_1.points.must_equal(3)
      player_2.points.must_equal(0)
    end

    it "When draw must return 1 point for both" do

      player_1 = Player.new(name: 'player 1', scored_goals: 1)
      player_2 = Player.new(name: 'player 2', scored_goals: 1)
      
      player_1, player_2 = Rules.get_points(player_1, player_2)
     
      player_1.points.must_equal(1)
      player_2.points.must_equal(1)
    end

    it "When second player wins, must return 3 points for player 2 and 0 for player 1" do

      player_1 = Player.new(name: 'player 1', scored_goals: 0)
      player_2 = Player.new(name: 'player 2', scored_goals: 1)

      player_1, player_2 = Rules.get_points(player_1, player_2)

      player_1.points.must_equal(0)
      player_2.points.must_equal(3)
    end
  end
end
