tom = Tweeter.create(name:'Taco Tom', twitter_handle: '@taco_tom')
bob = Tweeter.create(name:'Bob Burger', twitter_handle: '@burrrrger')
sprinkles = Tweeter.create(name:'Sprinkles The Cat', twitter_handle: '@meow_hiss_purr')
janet = Tweeter.create(name:'Janet Janetson', twitter_handle: '@janet_is_cooool')
lilly = Tweeter.create(name:'Lilly Lava', twitter_handle: '@lilly_tweets_stuff')

test_deck = Deck.create

tweeters = [tom,bob,sprinkles,janet,lilly]
tweeters.each do |tweeter|
  Inclusion.create(deck: test_deck, tweeter: tweeter)
end

new_game = Game.new()
