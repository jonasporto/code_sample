require "minitest/autorun"
require_relative "test_helper"

describe Player do
  
  describe ".getpoints" do

    it "When create a player instance the attributes must be accessible" do
      
      player = Player.new(name: 'player 1', scored_goals: 1, points: 2)
      
      player.name.must_equal('player 1')
      player.scored_goals.must_equal(1)
      player.points.must_equal(2)
    end

    it "When create a player instance the attribute scored_goals and points must be opcional" do
      
      player = Player.new(name: 'player 1')
      
      player.name.must_equal('player 1')
      player.scored_goals.must_equal(0)
      player.points.must_equal(0)

    end
    
    it "When create a player instance the attribute scored_goals must be opcional" do
      
      player = Player.new(name: 'player 1', points: 2)
      
      player.name.must_equal('player 1')
      player.scored_goals.must_equal(0)
      player.points.must_equal(2)

    end

    it "When create a player instance the attribute points must be opcional" do
      
      player = Player.new(name: 'player 1', scored_goals: 2)
      
      player.name.must_equal('player 1')
      player.scored_goals.must_equal(2)
      player.points.must_equal(0)
    end
  end
end
