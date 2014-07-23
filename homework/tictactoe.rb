# objective is to get 3 x's or 3 o's in a row/column/diagonal

#present a board
#0 represents blank
#1 represents x
#2 represents O
board = [
	[0,0,0]
	[0,0,0]
	[0,0,0]
	]
board.each do |row|
	row.each do |square|
		game_row =  ""
		case square
		when 0 
			game_row += '|'
		when 1
			game_row += 'x|'
		when 2 
			game_row += 'o|'
		end
	end
	print "\n"
end
				

	puts row.inspect
end
end

#player 1 makes a choice
# save his choice
#did player 1? if so end the game
#if not, player makes choice
#save that choice
#check to see if player 2 win, if so end game
#repeat line 5-11