class DashboardController < ApplicationController
  def index
    reader = FacebookReader.new(current_user.oauth_token)
    @posts = reader.posts
  end
end
