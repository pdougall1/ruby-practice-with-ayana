require "rack"
require "thin"
require "json"
require "byebug"

class HelloWorld
  def call(env)
    byebug
    [ 200, { "Content-Type" => "text/plain" }, env.to_json ]
    
  end
end

Rack::Handler::Thin.run HelloWorld.new