require '/lib/oauth_client.rb'

class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :game
  belongs_to :tweeter
  belongs_to :guessed_tweeter, class_name: :tweeter

  def all_tweets
    response = client.get("https://api.twitter.com/1.1/statuses/user_timeline.json?count=10&screen_name=#{tweeter.twitter_handle}")
    tweet_data = JSON.parse(response.body)

    tweets = []
    tweet_data.each do |tweet|
      tweets << tweet["text"]
    end
  end

  def self.tweet_content
    tweets.sample
  end

  def correct?
    guessed_tweeter == tweeter
  end


end



