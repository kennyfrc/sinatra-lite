require './app'
require './appender'
use Rack::Reloader
use Appender

run SomeApp.new