require 'open-uri'
require 'json'

class PostsController < ApplicationController

  def index
    @posts = JSON.parse(open("https://graph.facebook.com/me/home?access_token=AAACEdEose0cBAMotCf1ZArudeJ7LTiQFrxaRehy6YcrOlpLxZAZBG6mGYwRdZCNU2Pzs2H7Jq4erlN3lIk0ZAAl8fg2XMcVqUr7UyJ4YWhQZDZD&limit=100").read)["data"]
  end

end