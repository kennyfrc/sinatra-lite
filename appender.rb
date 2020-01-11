class Appender

  def initialize(application)
    @application = application
  end

  def call(env)
    status, headers, body = @application.call(env)
    append_str = "... made by Kenn"
    new_body = ""
    body.each { |string| new_body << " " << string }
    new_body << " " << append_str
    [status, headers, [new_body]]
  end

end