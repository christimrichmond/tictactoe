require "sinatra"
require_relative "tictactoe.rb"

get '/' do
  erb :home
end

