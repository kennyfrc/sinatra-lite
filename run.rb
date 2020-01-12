require File.join(File.dirname(__FILE__), "lib", "sinatra-lite")
require File.join(File.dirname(__FILE__), "routes")

Rack::Handler::Thin.run(SinatraLite::Application.new(routes))