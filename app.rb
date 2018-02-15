require "sinatra"
require_relative "tictactoe.rb"

get '/' do
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
	a1 = params[:a1]
	a2 = params[:a2]
	a3 = params[:a3]
	b4 = params[:b4]
	b5 = params[:b5]
	b6 = params[:b6]
	c7 = params[:c7]
	c8 = params[:c8]
	c9 = params[:c9]
	#winner_result = winner(a1, a2, a3, b4, b5, b6., c7, c8, c9)

	erb :play, :locals => {:a1 => a1, :a2 => a2, :a3 => a3, :b4 => b4, :b5 => b5, :b6 => b6, :c7 => c7, :c8 => c8, :c9 => c9,}
end
