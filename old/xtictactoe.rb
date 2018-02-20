    # This is old version...do not use!


    class Players
    	def x_player
    		@x = "X"
    	end
 		
 		def o_player
 			@o = "O"
 		end
 	end

def moves
	if available_moves == true
			$result = @x
	elsif
		avialable_moves == false
			$result = @o
	else
		$result = "Keep playing. No winner yet."
end

def board(a1, a2, a3, b4, b5, b6, c7, c8, c9)
	 moves = (a1...c9).each do |i|
	 	completed_moves = []
	 	if moves[i] != ""
	 		completed_moves.push(i)
	 	end
end

def winner
	if @x = x_winner 
		$result = "X wins!"
	elsif @o = o_winner
		$result = "O wins!"
	else
		$result = "-Tie-"
end

remaining_moves = moves - completed_moves
random_remaining_moves = remaining_moves.pop.to_s

x_winner = [{"a1" => X, "a2" => X, "a3" => X}, {"b4" => X, "b5" => X, "b6" => X}, {"c7" => X, "c8" => X, "c9" => X}, {"a1" => X, "b5" => X, "c9" => X}, {"a3" => X, "b5" => X, "c7" => X}, {"a1" => X, "b4" => X, "c7" => X}, {"a2" => X, "b5" => X, "c8" => X}, {"a3" => X, "b6" => X, "c9" => X}]

o_winner = [{"a1" => O, "a2" => O, "a3" => O}, {"b4" => O, "b5" => O, "b6" => O}, {"c7" => O, "c8" => O, "c9" => O}, {"a1" => O, "b5" => O, "c9" => O}, {"a3" => O, "b5" => O, "c7" => O}, {"a1" => O, "b4" => O, "c7" => O}, {"a2" => O, "b5" => O, "c8" => O}, {"a3" => O, "b6" => O, "c9" => O}]



end
end
end
