require 'rubygems'
require 'sinatra'
set :env,       :production
set :port,      4569
disable :run, :reload

require_relative './app'

run Sinatra::Application
