require 'rack'

module SinatraLite
  def routes
    @routes ||= {}
  end

  class Application
    def initialize(routes)
      @routes = routes
    end

    def call(env)
      body = @routes[env['REQUEST_METHOD']].select {|hash| hash.keys[0] == env['REQUEST_PATH'] }
      unless body.empty?
        [200, {"Content-Type" => "text/plain"}, body[0].values]
      else
        [404, {"Content-Type" => "text/plain"}, ["404 Page Doesn't Exist"]]
      end
    end
  end

  def get(path, &block)
    signature = { path => block.call }
    (routes['GET'] ||= []) << signature
    signature
  end
end

extend SinatraLite