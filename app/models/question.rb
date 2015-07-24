

class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :game
  belongs_to :tweeter
  belongs_to :guessed_tweeter, class_name: :tweeter



  def correct?
    guessed_tweeter == tweeter
  end

  def tweet_options
    potential_tweeters = []
    potential_tweeters << self.tweeter
    while potential_tweeters.length <= 4
      potential_tweeter = self.game.tweeters.sample
      if potential_tweeters.include?(potential_tweeter)
        p potential_tweeter
        p 'already has it'
      else
        p 'adding tweeter'
        p potential_tweeter
        potential_tweeters << potential_tweeter
      end
    end
    return potential_tweeters.shuffle
  end


end



