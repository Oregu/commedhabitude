require 'sinatra'
configure :production do
  require 'newrelic_rpm'
end

get '/' do
  "<ul><li><a href='/hi'>Hi page</a></li><li><a href='/lo'>Lo page</a></li><li><a href='myway'>My way</a></li></ul>"
end

get '/hi' do
  "Hello World!"
end

get '/lo' do
  "<h1>Hmmm</h1>"
end

