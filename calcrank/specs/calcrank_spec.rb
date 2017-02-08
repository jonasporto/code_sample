require "minitest/autorun"
require_relative "test_helper"

describe "#calcrank" do
  
  it "receive a matches list and return a formated rank result" do
    
    matches = ["Lions 3, Snakes 3", "Tarantulas 1, FC Awesome 0", "Lions 1, FC Awesome 1", "Tarantulas 3, Snakes 1", "Lions 4, Grouches 0"]

    rank = calcrank(matches)
    expected_rank = "1. Tarantulas, 6 pts \n2. Lions, 5 pts \n3. FC Awesome, 1 pt \n3. Snakes, 1 pt \n4. Grouches, 0 pts "
    
    rank.to_s.must_equal(expected_rank)
  end
end