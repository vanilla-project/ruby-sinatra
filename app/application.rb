require "sinatra/base"

class Application < Sinatra::Base
  set :views, File.join(settings.root, "/views")

  get "/" do
    erb :index
  end
end

