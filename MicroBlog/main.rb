require 'sinatra'
require 'sinatra/activerecord'
require 'bundler/setup'
require './models'
require 'sinatra/flash'
set :database, "sqlite3:microblog.sqlite3"
set :sessions, true

def current_user
	if session[:user_id]
		@current_user = User.find(session[:user_id])
	end
end	

#GET routes 

get "/" do 
	# @users = User.all 
	erb :home
end 

get '/home' do
  @user = current_user
  erb :home
end

get '/signup' do
	
	erb :signup
end

get '/login' do 
	session
	@user = User.last
	erb :login
end 

get '/logout' do
	session.clear
	session[:user_id] = nil
  	redirect '/'
end 

get '/profile' do 
  @user = current_user
  erb :profile
end

get '/posts' do
	erb :posts
end




#POST Routes

post '/signup' do
	puts params 
	@user = User.new(params[:user])
	@user.save 
	session[:user_id] = @user.id
	redirect '/profile'
	
		
end


post '/login' do 
	@user = User.where(email: params[:email]).first

	if @user && @user.password == params[:password]
		session[:user_id] = @user.id
		flash[:notice] = "Sign in Successful!"
		redirect '/profile'
	else
		flash[:alert] = "Either your email or password is wrong! Try again"
		redirect '/login'
	end
end

post '/posts' do
	@ usePost.create(content:params[:content], user_id: current_user.id)
	redirect '/profile'
	# @post = current_user.posts.new(content: params[:content])
	# @post.save
	# redirect '/posts'
end

# post '/newposts' do 
# 	@post = Post.new(params[:post])
# 	redirect '/posts'
# end
	











