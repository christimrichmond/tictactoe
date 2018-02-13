require "sinatra"
require_relative "tictactoe.rb"

get '/' do
  erb :home
end

# post '/input' do
# 	@x = params[:x]
# 	@o = params[:o]
# 	redirect 'results?x=' + num1 + '&num2=' + num2 + '&num3=' + num3 + '&num4=' + num4 + '&num5=' + num5 + '&num6=' + num6
# end