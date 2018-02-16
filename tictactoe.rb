  # class Game
  #   	def game_player(player)
  #   		if player1 = X
  #   			return X
  #   		elsif player2 = O
 	# 			return O
 	# 		end
 	# 	end
  # end

def board(a1, a2, a3, b4, b5, b6, c7, c8, c9)
	 board_hash = {1 => a1, 2 => a2, 3 => a3, 4 => b4, 5 => b5, 6 => b6, 7 => c7, 8 => c8, 9 => c9}
	 blank_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
	 completed_moves = []
	 (1...9).each do |i|
	 	if board_hash[i] != ""
	 		completed_moves.push(i)
	 	end
	end

	remaining_moves = blank_board - completed_moves
	random_remaining_moves = remaining_moves.shuffle.pop.to_s
end

def winner(a1, a2, a3, b4, b5, b6, c7, c8, c9)
	x_winner = ["X", "X", "X"]
	o_winner = ["O", "O", "O"]
	board_hash = {1 => a1, 2 => a2, 3 => a3, 4 => b4, 5 => b5, 6 => b6, 7 => c7, 8 => c8, 9 => c9}

	win_pattern = [[a1,a2,a3],[b4,b5,b6],[c7,c8,c9],[a1,b4,c7],[a2,b5,c8],[a3,b6,c9],[a1,b5,c9],[a3,b5,c7]]
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