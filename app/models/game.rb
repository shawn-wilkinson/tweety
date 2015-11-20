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

  def supply_tweets(person)
    response = CLIENT.get("https://api.twitter.com/1.1/statuses/user_timeline.json?count=10&screen_name=#{person.twitter_handle}")
    tweet_data = JSON.parse(response.body)

    tweets = []
    tweet_data.each do |tweet|
      tweets << tweet["text"]
    end
    tweets.sample(2)
  end

  def populate_questions
    tweet_array = []
    self.deck.tweeters.each do |person|
      tweets = supply_tweets(person)
      tweets.each do |content|
        tweet_array << [content,person]
      end
    end
    tweet_array.shuffle!
    if tweet_array.length > 20
      tweet_array = tweet_array.first(20)
    end
    tweet_array.each do |content_and_author|
      Question.create(tweet_content:content_and_author[0],tweeter:content_and_author[1],game:self)
    end
  end

  def total_questions
    self.questions.length
  end

  def total_correct
    # correct = self.questions.select{|question| p question if question.correct?}
    # correct.length
    correct_questions = []
    p self.questions
    self.questions.each do |question|
      if question.correct?
        correct_questions << question
      end
    end
    correct_questions.length
  end

  def percentage_correct
    num = ((self.total_correct.to_f / self.total_questions) * 100).to_i
    return num.to_s + "%"
  end


end
