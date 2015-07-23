class Game < ActiveRecord::Base
  belongs_to :deck
  belongs_to :user
  has_many :inclusions, through: :deck
  has_many :tweeters, through: :inclusions
  has_many :questions

end
