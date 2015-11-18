class FacebookReader
  attr_reader :token

  def initialize(token)
    @token = token
  end

  def posts
    connection = Faraday.new(url: 'https://graph.facebook.com')

    params = {
      :access_token => @token
    }

    response = connection.get('/me/posts?fields=message,likes.summary(true),shares',params)
    JSON.parse(response.body)
  end
end
