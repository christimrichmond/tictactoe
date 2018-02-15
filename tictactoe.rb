  class Players
    	def x_player
    		@x = "X"
    		return X
    	end
 		
 		def o_player
 			@o = "O"
 			return O
 		end
 	end

def board(a1, a2, a3, b4, b5, b6, c7, c8, c9)
	 board_hash = {a1 => 1, a2 => 2, a3 => 3, b4 => 4, b5 => 5, b6 => 6, c7 => 7, c8 => 8, c9 => 9}
	 blank_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
	 completed_moves = []
	 (1...9).each do |i|
	 	if board_hash[i] != ""
	 		completed_moves.push(i)
	 	end
	end

	remaining_moves = blank_board - completed_moves
	random_remaining_moves = remaining_moves.pop.to_s
end

def winner(a1, a2, a3, b4, b5, b6, c7, c8, c9)
	x_winner = ["X", "X", "X"]
	o_winner = ["O", "O", "O"]
	
	board_hash = {a1 => 1, a2 => 2, a3 => 3, b4 => 4, b5 => 5, b6 => 6, c7 => 7, c8 => 8, c9 => 9}
	win = [[1, 2, 3],[4, 5, 6], [7, 8, 9], [1, 5, 9], [3, 5, 7], [1, 4, 7], [2, 5, 8], [3, 6, 9]]

	(0..7).each do |i|
		moves = win[i]
		#puts moves
			if moves == x_winner 
				$result = "X wins!"
				break
			elsif moves == o_winner
				$result = "O wins!"
				break
			else
				$result = "No winner."
			end
end

return $result
end