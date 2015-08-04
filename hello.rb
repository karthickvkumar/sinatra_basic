require 'sinatra'
require 'shotgun'
get '/' do 
	sleep 5
  logger.info "loading data"
	"Welcome to Mr.Karthick Kumar,lets start to learn sinatra"
	  redirect to('/next')

end
get '/next' do
  stream do |out|
    out << "It's gonna be legen -\n"
    sleep 5
    out << " (wait for it) \n"
    sleep 5
    out << "- dary!\n"
  end
end
enable :sessions

get '/user' do
  session[:secret] = 'karthick kumar'
  redirect to('/home')
end

get '/home' do
  session[:secret]
    # send_file '1.png'

end
error 403 do
  'Access forbidden'
end

get '/secret' do
  403
end
