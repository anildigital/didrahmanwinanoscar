require 'rubygems'
require 'sinatra'

get "/" do
  result_time = Time.parse("23-02-2009 01:00:00")
  current_time = Time.now
  @days = ((result_time - current_time) / 86400).to_i
  @hours = ((result_time - current_time) / 3600).to_i
  @minutes = ((result_time - current_time) / 60).to_i
  @seconds = (result_time - current_time)
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
