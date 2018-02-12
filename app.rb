require "sinatra"
enable :sessions

get '/' do
  erb :home
end

# post 'name' do
# 	session[:name] = params[:name]
# 	redirect '/'