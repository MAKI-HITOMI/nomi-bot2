require 'twitter'
require 'date'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['MY_CONSUMER_KEY']        #Consumer Key (API Key)
  config.consumer_secret     = ENV['MY_CONSUMER_SECRET']     #Consumer Secret (API Secret)
  config.access_token        = ENV['MY_ACCESS_TOKEN']        #Access Token
  config.access_token_secret = ENV['MY_ACCESS_TOKEN_SECRET'] #Access Token Secret
end

last_update = DateTime.parse(client.user_timeline.first.created_at)
blank_time = DateTime.now - last_update.new_offset(Rational(3,8))

if blank_time * 24 > 20 then
client.update("********")
end
client.update("Hello")
