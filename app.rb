class SomeApp
  def call(env)
    [200, {"Content-Type" => "text/plain"}, ["Hey, the time right now is #{Time.now}"]]
  end
end