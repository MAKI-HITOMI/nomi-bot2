require 'twitter'

@client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['MY_CONSUMER_KEY']
  config.consumer_secret     = ENV['MY_CONSUMER_SECRET']
  config.access_token        = ENV['MY_ACCESS_TOKEN']
  config.access_token_secret = ENV['MY_ACCESS_TOKEN_SECRET']
end

now1 =DateTime.now
 
if now1.hour == 4
@client.update("よず")
elsif now1.hour == 3
@client.update("さんず")
elsif now1.hour == 5
@client.update("ごず")
elsif now1.hour == 10
@client.update("ずうず")
elsif now1.hour == 22
@client.update("ずうず(夜)")
end
