# Note: the name of this file (app.rb) is irrelevant.

# Require config/environment.rb
require ::File.expand_path('../config/environment',  __FILE__)

set :app_file, __FILE__

get '/' do
  posts = Post.reverse_order(:created_at).all
  erb :index, :locals => {:posts => posts}
end

get '/categories' do
  erb :categories
end
get '/about' do
  erb :about
end
get '/contact' do
  erb :contact
end

post '/posts' do
  if params[:description].empty?
    redirect to('/?error=1')
  elsif params[:name].empty?
    redirect to('/?error=1')

  elsif params[:contact].empty?
    redirect to('/?error=1')

  elsif params[:grade].empty?
    redirect to('/?error=1')
  else
    Post.create(:description => params[:description], :name => params[:name], :contact => params[:contact],  :grade => params[:grade])
    redirect to('/?success=1')
  end
end


