require "minitest/autorun"
require_relative "test_helper"

describe RankingBoard do
  
  describe "#rank_results" do

    it "Receive players instance and return a rank ordered from the most to least points" do

      @ranking = RankingBoard.new
      
      @ranking << [
      	Player.new(name: 'player 1', scored_goals: 1, points: 1),
      	Player.new(name: 'player 2', scored_goals: 3, points: 2),
      	Player.new(name: 'player 3', scored_goals: 5, points: 3)
      ]
      
      rank = @ranking.rank_results

      rank[0].include?('player 3').must_equal(true)
      rank[1].include?('player 2').must_equal(true)
      rank[2].include?('player 1').must_equal(true)
    end
  end

  describe "#to_s" do

    it "The to_s method must be just a string formatted of #rank_results array" do

      @ranking = RankingBoard.new
      
      @ranking << [
        Player.new(name: 'player 1', scored_goals: 1, points: 1),
        Player.new(name: 'player 2', scored_goals: 3, points: 2),
        Player.new(name: 'player 3', scored_goals: 5, points: 3)
      ]
      
      @ranking.rank_results.must_equal(@ranking.to_s.split("\n"))
    end
  end
end
