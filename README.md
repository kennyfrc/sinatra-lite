### Sinatra Lite

This is a learning project to help me learn both Rack and Sinatra.

### Limitations

Defaults to Thin as the server
Defaults to port 8080

### How it Works

There is an existing `routes.rb` file provided as a sample test.

To run the sample application, run `ruby run.rb`.

### Features

GET ROUTES

```
# hello world at root
get '/' do
  "Hello World"
end

# also does other get paths
get '/advice' do
  "This renders /advice"
end

# throws a 404 for a page that doesn't exist
#=> try searching for localhost:8080/foo
```

### TODO

1. Add "Route patterns may include named parameters"
2. Add ERB templates
```
get '/' do
  erb :index
end
```

3. utilize query parameters
4. learn the way sinatra implements tests