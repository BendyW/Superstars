require 'sinatra/base'

require './controllers/application_controller'
require './controllers/superstar_controller'

require './models/superstar'

map('/'){ run ApplicationController}
map('/api/superstars'){ run SuperstarController}

#before/after filters
before '/*' do
  puts "Route Log"
  puts request.host
  puts params
  puts request.path
end

after '/*' do
  puts "Completed Route Log:"
  puts response.body
  puts response.status
end

