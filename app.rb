# ENV['RACK_ENV'] = 'development'

require 'sinatra/base'
require './lib/user'
require './config/datamapper'
require 'pry'

class FakersBnB < Sinatra::Base
  set :sessions, true


  get '/' do
    erb :index
  end

  get '/signin' do
    erb :signin
  end

  post '/signin' do
    user = User.authenticate(params[:email], params[:password])

    if user
      session[:user_id] = user.id
      redirect '/profile'
    else
      redirect '/error1'
    end

  end

  get '/error1' do
    erb :error1
  end

  get '/error2' do
    erb :error2
  end

  get '/signup' do
    erb :signup
  end

  post '/signup' do
    user = User.create(email: params[:email], password: params[:password])
    redirect '/error2' unless user.valid?
    if user
      session[:user_id] = user.id
      redirect '/profile'
    else
      redirect '/error1'
    end
  end

  post '/logout' do
    session.clear
    redirect '/'
  end

  get '/profile' do
    @user = User.get(session[:user_id])
    erb :profile
  end

  run! if app_file == $0
end
