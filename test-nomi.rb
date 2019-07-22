require 'twitter'

@client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = 
  config.access_token_secret = 
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
