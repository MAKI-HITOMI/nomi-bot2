require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "MY_CONSUMER_KEY"
  config.consumer_secret     = "MY_CONSUMER_SECRET"
  config.access_token        = "MY_ACCESS_TOKEN"
  config.access_token_secret = "MY_ACCESS_TOKEN_SECRET"
end

client.update("ぴちぴちビキニのハマチと愉快なココナッツ投げ祭り")
