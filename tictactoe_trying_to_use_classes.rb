class Game
	def initialize
		@board = {'a1' => ' ', 'a2' => ' ', 'a3' => ' ', 'b4' => ' ', 'b5' => ' ', 'b6' => ' ', 'c7' => ' ', 'c8' => ' ', 'c9' => ' '}
		@players = {'player1' => 'X', 'autoplay' => 'O'}
		@win = 	[
				[a1,a2,a3],
				[b4,b5,b6],
				[c7,c8,c9],
				[a1,b4,c7],
				[a2,b5,c8],
				[a3,b6,c9],
				[a1,b5,c9],
				[a3,b5,c7]
				]
	end	

	def turns
		"X #{@players} = "
end

