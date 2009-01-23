require 'rubygems'
require 'sinatra'

get "/" do
  result_day = Time.parse("22-02-2009")
  today = Time.now
  @days = ((result_day - today) / 86400).to_i
  erb :index
end

#Exception handing for production environment
configure :production do
  not_found do
    'This is nowhere to be found'
  end
  error do
    'Sorry there was a nasty error - ' + request.env['sinatra.error'].name
  end
end
