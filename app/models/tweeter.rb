class Tweeter < ActiveRecord::Base
  has_many :inclusions
  has_many :decks, through: :inclusions
  has_many :questions
end
