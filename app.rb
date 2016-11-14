require 'sinatra'
require 'json'

get '/hello-world' do
  response = {:message => "Hello, World !"}
  JSON.generate(response)
end
