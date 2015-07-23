require 'uri'
require 'net/http'
require 'simple_oauth'

class OAuthClient
  attr_reader :credentials

  def initialize(credentials)
    raise ArgumentError, "must provide consumer_key, consumer_secret, token, and token_secret" unless valid_credentials?(credentials)
    @credentials = credentials
  end

  def get(url)
    # create the HTTP post request
    uri = URI.parse(url)

    request = Net::HTTP::Get.new(uri)

    # set the Authorization Header using the oauth helper
    request["Authorization"] = oauth_header(request)

    # connect to the server and send the request
    Net::HTTP.start(uri.hostname, uri.port, use_ssl: (uri.scheme == "https")) do |http|
      http.request(request)
    end

  end

  private

  # A helper method to generate the OAuth Authorization header given
  # an Net::HTTP::GenericRequest object and a Hash of params
  def oauth_header(request)
    SimpleOAuth::Header.new(request.method, request.uri, URI.decode_www_form(request.body.to_s), credentials).to_s
  end

  def valid_credentials?(credentials)
    [:consumer_key, :consumer_secret, :token, :token_secret].all? { |key| credentials[key] }
  end
end

# sample usage:
#
client = OAuthClient.new(
  consumer_key: ENV["TWITTER_CONSUMER_KEY"],
  consumer_secret: ENV["TWITTER_CONSUMER_SECRET"],
  token: ENV["TWITTER_TOKEN"],
  token_secret: ENV["TWITTER_TOKEN_SECRET"]
)
#
require 'json'
response = client.get("https://api.twitter.com/1.1/statuses/user_timeline.json?count=10&screen_name=mgalicer")
tweet_data = JSON.parse(response.body)

maris_tweets = []
tweet_data.each do |tweet|
  # maris_tweets << tweet[:text]
  p tweet["text"]
end

# p maris_tweets
