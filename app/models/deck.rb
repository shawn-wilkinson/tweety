class Deck < ActiveRecord::Base
  belongs_to :creator, class_name: :"User"
  has_many :inclusions
  has_many :tweeters, through: :inclusions
  has_many :games
end
