require 'sinatra'
require 'pry'

set :public_folder, File.dirname(__FILE__) + '/public'

get '/' do
  @tasks = File.readlines('tasks')
  erb :index
end

get '/tasks/:task_name' do
  @task = params[:task_name]
  erb :show
end

post '/tasks' do

  task = params['task_name']

  File.open('tasks', 'a') do |file|
    file.puts(task)
  end

  redirect '/'
end
