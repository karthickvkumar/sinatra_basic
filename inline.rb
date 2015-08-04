require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

__END__

@@ layout
%html
  = yield

@@ index
%div.title Hello world.