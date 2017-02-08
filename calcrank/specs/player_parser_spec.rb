require "minitest/autorun"
require_relative "test_helper"

describe Player do
  
  describe ".execute" do

    it "When receive a string related to player to parser returns an hash with player name and scored_goals" do

      parser = PlayerParser.execute("player_1 1")
      
      result = {name: "player_1", scored_goals: 1}

      parser.must_equal(result)
    end
  end

  describe ".name" do

    it "When receive a string related to player to parser returns an hash with player name and scored_goals" do

      parser = PlayerParser.name("player_1 1")
      
      parser.must_equal("player_1")
    end
  end

  describe ".points" do

    it "When receive a string related to player to parser returns an hash with player name and scored_goals" do

      parser = PlayerParser.points("player_1 1")
      
      parser.must_equal(1)
    end
  end
   
end
