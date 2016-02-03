require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'erb'


# General pattern for defining what to do when a user request something
# HTTP verb, route, do
#   code
# end

# When someone goes to the naked domain, do this
get '/' do
  # Render a view called form.erb
  erb :form
end

post '/response' do
  greeting = params[:greeting]
  binding.pry
  parental_yell = "WHAT DO YOU MEAN, '#{greeting.upcase}'?!?!? YOU'RE GROUNDED!!"
  # Serve up this file, and locals lists the variables that need to be seen by the file
  erb :parent_response, locals: { yelling: parental_yell }
end