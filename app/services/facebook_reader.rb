class FacebookReader
  attr_reader :token

  def initialize(token)
    @token = token
  end

  def posts
    connection = Faraday.new(url: 'https://graph.facebook.com')

    params = {
      :token => @token,
      :access_token => 'CAACEdEose0cBAFzyXcXmPoZA7KrPuCabzDQxZBnK7CffblZBDnMDdpJvoqTZBQWZAJo56uY1R9R8OTtK8EZBwBPJlZBrnyZBIk03ppUgZChpIZA8LX1VV9UAR26MyPG7e0R5fPaOrSAkQPxnzRZAbwxHP5OFnYQRHly2ZA6fk21FM5JbtQ4uynXEJVZAbvka2BxODD4dDptbhzS2TjAZDZD'
    }

    response = connection.get('/me/posts?fields=message,likes.summary(true),shares',params)
    JSON.parse(response.body)
  end
end
