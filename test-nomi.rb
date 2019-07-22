require 'twitter'

@client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "VyaOUqvHlMMTBbqzBbur2uVk0"
  config.consumer_secret     = "KPc6a1g7Yi1ZoMU4sUPazaxLEvUUacvvWDPPL57JbzfU1VshbM"
  config.access_token        = "1152087395388387328-3ssJlajWIzcPsk3wut4JCZj2vyGqIm"
  config.access_token_secret = "bX70DZaY16hd5sstvmqGtAPNveSTxiUztfYJKjIfzKB0A"
end

@client.update("ぴっぴ")

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
