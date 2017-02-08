#!/usr/bin/env ruby

require_relative "parser_helper"
require_relative "player_parser"
require_relative "player"
require_relative "rules"
require_relative "ranking_board"

def calcrank(matches)
  matches.inject(RankingBoard.new) do |ranking, match|
  
    player_1, player_2 = match.split(',')
    
    player_1 = ParserHelper::Player(player_1)
    player_2 = ParserHelper::Player(player_2) 
    
    ranking << Rules.get_points(player_1, player_2)
    ranking
  end
end

# Only run when this file is the main file
# instead of having been included by another file
if $0 == __FILE__
  STDOUT.puts calcrank(ARGF.read.split("\n"))
end