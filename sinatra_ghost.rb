# local dependencies
require './app'
require './appender'

# middleware
use Rack::Reloader
use Appender

# add sinatra routes here