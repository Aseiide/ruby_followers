require 'twitter'
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "2A9K5ESmsjjRzQIk8VAtm0ze5"
  config.consumer_secret     = "w0jHFUG739ZbtAYQ9jSbGVDkRMITU3hRriBd8i3jL22PZs05qx"
  config.access_token        = "113606541-Tz6QB94DN943uUUztNQYjmYjRnYaC6fL17Jb6wCN"
  config.access_token_secret = "hHJLfiL9hcwtKIbLfttUnUmfilBRPqrs5pEjaqNwVNjHw"
end

#フォローしてる人のidを100人取得
a = client.friend_ids("acalab_07").take(100)
#フォロワーのidを100人取得
b = client.follower_ids("acalab_07").take(100)

p a 
p b 

client.users(b).each do |friend|
    p friend.screen_name
    end