tom = Tweeter.create(name:'Taco Tom', twitter_handle: '@taco_tom')
bob = Tweeter.create(name:'Bob Burger', twitter_handle: '@burrrrger')
sprinkles = Tweeter.create(name:'Sprinkles The Cat', twitter_handle: '@meow_hiss_purr')
janet = Tweeter.create(name:'Janet Janetson', twitter_handle: '@janet_is_cooool')
lilly = Tweeter.create(name:'Lilly Lava', twitter_handle: '@lilly_tweets_stuff')


shawn = User.create(name:'Shawn',password:'dbcpassword')

test_deck = Deck.create(name:"Test Deck", description: "A deck to test if this thing is working...", creator: shawn)

tweeters = [tom,bob,sprinkles,janet,lilly]
tweeters.each do |tweeter|
  Inclusion.create(deck: test_deck, tweeter: tweeter)
end

new_game = Game.new()

new_game.user = shawn

tweeters.each do |tweeter|

  tweeter.questions << Question.new(game: new_game, tweet_content: "This is a test tweet. The tweeter is: #{tweeter.name}")
  tweeter.questions << Question.new(game: new_game, tweet_content: "This is a test tweet. The tweeter is: #{tweeter.name}")
  tweeter.questions << Question.new(game: new_game, tweet_content: "This is a test tweet. The tweeter is: #{tweeter.name}")
  tweeter.questions << Question.new(game: new_game, tweet_content: "This is a test tweet. The tweeter is: #{tweeter.name}")

end

dbc_deck = Deck.create(name:"DBC STAFF")
dbc_deck.tweeters << Tweeter.create(name: "Matt Baker", twitter_handle: "mattbaker")
dbc_deck.tweeters << Tweeter.create(name: "Mike Busch", twitter_handle: "mikelikesbikes")
dbc_deck.tweeters << Tweeter.create(name: "Casey Cumbow", twitter_handle: "case_eee")
dbc_deck.tweeters << Tweeter.create(name: "Duke Greene", twitter_handle: "dukegreene")


