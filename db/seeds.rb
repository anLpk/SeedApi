require "json"
require "rest-client"
# TODO: Write a seed to insert 10 posts in the database fetched from the Hacker News API.
response = RestClient.get "https://hacker-news.firebaseio.com/v0/topstories.json"
repos = JSON.parse(response).take(10)
array = []
repos.each do |story|
  x = RestClient.get "https://hacker-news.firebaseio.com/v0/item/#{story}.json"
  y = JSON.parse(x)
  array << y
end
# p array[1]["url"]
array.each do |blog|
  Post.create!(
    title: blog["title"],
    url: blog["url"]
  )
end
