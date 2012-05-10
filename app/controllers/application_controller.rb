class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :access_token
  def access_token
    'AAACEdEose0cBAMotCf1ZArudeJ7LTiQFrxaRehy6YcrOlpLxZAZBG6mGYwRdZCNU2Pzs2H7Jq4erlN3lIk0ZAAl8fg2XMcVqUr7UyJ4YWhQZDZD'
  end
end
