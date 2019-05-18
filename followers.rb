require 'twitter'
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "hogehoge"
  config.consumer_secret     = "fuu"
  config.access_token        = "fizz"
  config.access_token_secret = "buzz"
end

#フォローしてる人のidを100人取得
a = client.friend_ids("fuu").take(100)
#フォロワーのidを100人取得
b = client.follower_ids("hoge").take(100)

p a 
p b 

client.users(b).each do |friend|
    p friend.screen_name
    end