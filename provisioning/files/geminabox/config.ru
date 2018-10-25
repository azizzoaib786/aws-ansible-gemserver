require 'rubygems'
require 'geminabox'

Geminabox.data = '/mnt/data'

app = Rack::Builder.new do
  map '/ping' do
    run lambda { |env| [200, {}, ['pong']] }
  end

  map '/' do
     run Geminabox::Server
  end
end

run app
