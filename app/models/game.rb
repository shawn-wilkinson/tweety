require 'uri'
require 'net/http'
require 'simple_oauth'
require 'json'

require_relative '../../lib/oauth_client'

class Game < ActiveRecord::Base
  belongs_to :deck
  belongs_to :user
  has_many :inclusions, through: :deck
  has_many :tweeters, through: :inclusions
  has_many :questions

# WRITE supply_tweets method for tweeter (instance method)
  def supply_tweets(person)
    response = CLIENT.get("https://api.twitter.com/1.1/statuses/user_timeline.json?count=10&screen_name=#{person.twitter_handle}")
    tweet_data = JSON.parse(response.body)

    tweets = []
    tweet_data.each do |tweet|
      tweets << tweet["text"]
    end
    tweets
  end

  def populate_questions
    self.deck.tweeters.each do |person|
      tweet_array = supply_tweets(person)
        2.times do
          first_tweet = tweet_array.sample
          tweet_array.delete(first_tweet)
          Question.create(tweet_content:first_tweet,tweeter:person,game:self)
        end
    end
  end

end
