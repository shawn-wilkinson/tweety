class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :game
  belongs_to :tweeter
  belongs_to :guessed_tweeter, class_name: :tweeter


  def correct?
    guessed_tweeter == tweeter
  end


end
