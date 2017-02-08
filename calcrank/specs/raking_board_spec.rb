require "minitest/autorun"
require_relative "test_helper"

describe RankingBoard do
  
  describe ".getpoints" do

    it "Receive players instance and return a rank ordered from the most to least points" do

      @ranking = RankingBoard.new
      
      @ranking << [
      	Player.new(name: 'player 1', scored_goals: 1, points: 1),
      	Player.new(name: 'player 2', scored_goals: 3, points: 2),
      	Player.new(name: 'player 3', scored_goals: 5, points: 3)
      ]
      
      rank = @ranking.to_s.split("\n")

      rank[0].include?('player 3').must_equal(true)
      rank[1].include?('player 2').must_equal(true)
      rank[2].include?('player 1').must_equal(true)
    end
  end
end
