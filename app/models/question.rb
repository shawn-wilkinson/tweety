

class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :game
  belongs_to :tweeter
  belongs_to :guessed_tweeter, class_name: :Tweeter



  def correct?
    self.guessed_tweeter == self.tweeter
  end

  def tweet_options
    potential_tweeters = []
    potential_tweeters << self.tweeter
    while potential_tweeters.length < 4
      potential_tweeter = self.game.tweeters.sample
      if potential_tweeters.include?(potential_tweeter)
      else
        potential_tweeters << potential_tweeter
      end
    end
    return potential_tweeters.shuffle
  end

  def set_guess(guess)
    self.guessed_tweeter = guess
  end


end



