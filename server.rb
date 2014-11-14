require 'sinatra'

set :public_folder, File.dirname(__FILE__) + '/public'

get '/' do
  @tasks = ['pay bills', 'buy milk', 'learn Ruby']
  erb :index
end

get '/tasks/:task_name' do
  @task = params[:task_name]
  erb :show
end
