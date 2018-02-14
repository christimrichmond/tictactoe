    class Players
    	def x_player
    		@x = "X"
    	end
 		
 		def o_player
 			@o = "O"
 		end
 	end

def moves
	if @x && board == true
			puts "X"
	elsif
		@o && board == true
			puts "O"
	else
		false
	end
end

def winner
	if @x = x_winner 
		puts "X wins!"
	elsif @o = o_winner
		puts "O wins!"
	else
		puts "-Tie-"
end



board = [[a1, a2, a3], [b4, b5, b6], [c7, c8, c9]]

x_winner = [{"a1" => X, "a2" => X, "a3" => X}, {"b4" => X, "b5" => X, "b6" => X}, {"c7" => X, "c8" => X, "c9" => X}, {"a1" => X, "b5" => X, "c9" => X}, {"a3" => X, "b5" => X, "c7" => X}, {"a1" => X, "b4" => X, "c7" => X}, {"a2" => X, "b5" => X, "c8" => X}, {"a3" => X, "b6" => X, "c9" => X}]

o_winner = [a1 => O, a2, a3], [b4, b5, b6], [c7, c8, c9], [a1, b5, c9], [a3, b5, c7], [a1, b4, c7] [a2, b5, c8], [a3, b6, c9]





