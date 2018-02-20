def players(player)
    if player1 = X
      return X
    elsif player2 = O
      return O
    end

    if a1 == "X"
			a1 = "X"
		elsif a1 == "O"
			a1 = "O"
		elsif a1 == ""
			a1 = ""
		else a1 = ""
	end
end	

def board(a1, a2, a3, a4, a5, a6, a7, a8, a9)
	# board_hash = {a1 => 1, a2 => 2, a3 => 3, a4 => 4, a5 => 5, a6 => 6, a7 => 7, a8 => 8, a9 => 9}
	 blank_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
	 completed_moves = []
	 (1..9).each do |i|
	 	if blank_board[i] != " "
	 		completed_moves.push(i)
	 	end
end

	remaining_moves = blank_board - completed_moves
	random_remaining_moves = remaining_moves.shuffle.pop.to_s
	
	a = "a"
	out = a<<random_remaining_moves
	return out
	puts out
	end




def winner(a1, a2, a3, a4, a5, a6, a7, a8, a9)
	x_winner = ["X", "X", "X"]
	o_winner = ["O", "O", "O"]
	# board_hash = {a1 => 1, a2 => 2, a3 => 3, a4 => 4, a5 => 5, a6 => 6, a7 => 7, a8 => 8, a9 => 9}
	win_pattern = [[a1,a2,a3],[a4,a5,a6],[a7,a8,a9],[a1,a4,a7],[a2,a5,a8],[a3,a6,a9],[a1,a5,a9],[a3,a5,a7]]

	(0..7).each do |i|
		moves = win_pattern[i]
			if moves == x_winner 
				$result = "X wins!"
				break
			elsif moves == o_winner
				$result = "O wins!"
				break
			else
				$result = "No winner"
			end

	end
return $result	
end

