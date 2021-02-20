require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

get '/' do # <- Router part
   "<h1>Welcome to Marc's cookbook!</h1>"
  # [...]   #
  # [...]   # <- Controller part
  # [...]   #
end

# This file will act as the Router and the Controller of your MVC app.
# The routing part is the get '/' and the controller part is the blocks
# passed to the get (and other HTTP verbs as we'll see...) method.
