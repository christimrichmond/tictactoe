require "sinatra"
require_relative "tictactoe.rb"

get '/' do
	winner_result = " "
	erb :home
end

post '/board' do 
	a1 = params[:a1]
	a2 = params[:a2]
	a3 = params[:a3]
	b4 = params[:b4]
	b5 = params[:b5]
	b6 = params[:b6]
	c7 = params[:c7]
	c8 = params[:c8]
	c9 = params[:c9]
	puts a1, a2, a3, b4, b5, b6, c7, c8, c9
	redirect '/play?a1=' + a1.upcase + '&a2=' + a2.upcase + '&a3=' + a3.upcase + '&b4=' + b4.upcase + '&b5=' + b5.upcase + '&b6=' + b6.upcase + '&c7=' + c7.upcase + '&c8=' + c8.upcase + '&c9=' + c9.upcase
end

get '/play' do
	# autoplay = " "
	winner_result = " "
	a1 = params[:a1]
	a2 = params[:a2]
	a3 = params[:a3]
	b4 = params[:b4]
	b5 = params[:b5]
	b6 = params[:b6]
	c7 = params[:c7]
	c8 = params[:c8]
	c9 = params[:c9]

	if a1 == "X"
		a1 = "X"
	elsif a1 == " "
		a1 = " "
	else 
		false

	end

		if a2 == "O"
			a2 = "O"
		elsif a1 == " "
			a2 = " "
	else 
		false

		end

	if a3 == "O"
		a3 = "O"
	elsif a3 == " "
		a3 = " "
	else 
		false
	end

		if b4 == "O"
			b4 = "O"
		elsif b4 == " "
			b4 = " "
		else 
			false
		end

	if b5 == "O"
		b5 = "O"
	elsif b5 == " "
		b5 = " "
	else 
		false

	end

		if b6 == "O"
			b6 = "O"
		elsif b6 == " "
			b6 = " "
		else 
			false

		end
	
	if c7 == "O"
		c7 = "O"
	elsif c7 == " "
		c7 = " "
	else 
		false

	end

		if c8 == "O"
			c8 = "O"
		elsif c8 == " "
			c8 = " "
		else 
			false

		end

	if c9 == "O"
		c9 = "O"
	elsif c9 == " "
		c9 = " "
	else 
		false

	end


	winner_result = winner(a1, a2, a3, b4, b5, b6, c7, c8, c9)
	erb :play, :locals => {:a1 => a1, :a2 => a2, :a3 => a3, :b4 => b4, :b5 => b5, :b6 => b6, :c7 => c7, :c8 => c8, :c9 => c9, :winner_result => winner_result}
end
