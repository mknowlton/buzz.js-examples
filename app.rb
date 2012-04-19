require 'rubygems'
require 'sinatra'

get '/' do 
  erb :index
end

get '/:page' do
  if File.exists?('views/'+params[:page]+'.erb')
    erb params[:page].to_sym
  else
    redirect '404.html'
  end   
end