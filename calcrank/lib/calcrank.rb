#!/usr/bin/env ruby

require_relative "player_parser"
require_relative "player"
require_relative "rules"
require_relative "ranking_board"

def calcrank(matches)

  ranking = RankingBoard.new
  
  matches.each do |match|
  
    players = match.split(',')
    
    player_1 = Player.new(PlayerParser.execute(players[0]))
    player_2 = Player.new(PlayerParser.execute(players[1])) 
    
    ranking << Rules.get_points(player_1, player_2)
  end

  ranking
end

# Only run when this file is the main file
# instead of having been included by another file
if $0 == __FILE__
  STDOUT.puts calcrank(ARGF.read.split("\n"))
end