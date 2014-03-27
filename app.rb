# Note: the name of this file (app.rb) is irrelevant.

# Require config/environment.rb
require ::File.expand_path('../config/environment',  __FILE__)

set :app_file, __FILE__

get '/' do
  erb :index
end

get '/categories' do
  erb :categories
end

post '/posts' do
 puts params
 puts "KTSF"
 Post.create(:description => params[:description], :name => params[:name], :contact => params[:contact],  :grade => params[:grade])
 redirect to('/')
end


