require "minitest/autorun"
require_relative "test_helper"

describe ParserHelper do
  
  describe ".Player" do

    it "parse string and must return a player instance" do

      parser = ParserHelper::Player("player_1 1")
      parser.class.must_equal(Player)
    end
  end
end
