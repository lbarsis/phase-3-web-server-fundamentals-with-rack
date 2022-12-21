require 'rack'
require 'pry'
require 'sinatra'

class App
  def call(env)
   path = env["PATH_INFO"]

    if path == "/"
      [200, { "Content-Type" => "text/html" }, ["<h2>Hello <em>World</em>!</h2>"]]
    elsif path == "/potato"
      [200, { "Content-Type" => "text/html" }, ["<p>Boil 'em, mash 'em, stick 'em in a stew</p>"]]
    else
      [404, { "Content-Type" => "text/html" }, ["Page not found"]]
    end
  end
end 

# run App.new

# Using sinatra for setting up a server
class Shark < Sinatra::Base

  get '/' do
    "Hello World"
  end

  get '/baby_shark' do
    '<h1>&#129416</h1>'
  end
end


run Shark