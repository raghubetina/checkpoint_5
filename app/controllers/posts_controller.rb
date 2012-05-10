require 'open-uri'
require 'json'

class PostsController < ApplicationController
  def fetch_posts(num)
    result = JSON.parse(open("https://graph.facebook.com/me/home?access_token=#{access_token}&limit=#{[100, num].min}").read)
    new_posts = result["data"]
    
    if num > 100
      result = JSON.parse(open(result["paging"]["next"]).read)
      new_posts += result["data"]
    end

    return new_posts
  end
  
  def index
    @posts = fetch_posts(50)
    @posts_with_videos = @posts.select { |post| post["type"] == "video" }
  end
end