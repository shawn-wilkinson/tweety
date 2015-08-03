# tom = Tweeter.create(name:'Taco Tom', twitter_handle: '@taco_tom')
# bob = Tweeter.create(name:'Bob Burger', twitter_handle: '@burrrrger')
# sprinkles = Tweeter.create(name:'Sprinkles The Cat', twitter_handle: '@meow_hiss_purr')
# janet = Tweeter.create(name:'Janet Janetson', twitter_handle: '@janet_is_cooool')
# lilly = Tweeter.create(name:'Lilly Lava', twitter_handle: '@lilly_tweets_stuff')


# shawn = User.create(name:'Shawn',password:'dbcpassword')

# test_deck = Deck.create(name:"Test Deck", description: "A deck to test if this thing is working...", creator: shawn)

# tweeters = [tom,bob,sprinkles,janet,lilly]
# tweeters.each do |tweeter|
#   Inclusion.create(deck: test_deck, tweeter: tweeter)
# end

# new_game = Game.new()

# new_game.user = shawn

# tweeters.each do |tweeter|

#   tweeter.questions << Question.new(game: new_game, tweet_content: "This is a test tweet. The tweeter is: #{tweeter.name}")
#   tweeter.questions << Question.new(game: new_game, tweet_content: "This is a test tweet. The tweeter is: #{tweeter.name}")
#   tweeter.questions << Question.new(game: new_game, tweet_content: "This is a test tweet. The tweeter is: #{tweeter.name}")
#   tweeter.questions << Question.new(game: new_game, tweet_content: "This is a test tweet. The tweeter is: #{tweeter.name}")

# end

dbc_deck = Deck.create(name:"DBC STAFF", description: "Make fun of your favorite DBC staff ;)")
dbc_deck.tweeters << Tweeter.create(name: "Matt", twitter_handle: "mattbaker")
dbc_deck.tweeters << Tweeter.create(name: "Mike", twitter_handle: "mikelikesbikes")
dbc_deck.tweeters << Tweeter.create(name: "Casey", twitter_handle: "case_eee")
dbc_deck.tweeters << Tweeter.create(name: "Duke", twitter_handle: "dukegreene")
dbc_deck.tweeters << Tweeter.create(name: "Courtney", twitter_handle:"courtneyU88")
dbc_deck.tweeters << Tweeter.create(name: "Alyssa", twitter_handle: "alycit")
dbc_deck.tweeters << Tweeter.create(name: "Lucas", twitter_handle: "ltw_")
dbc_deck.tweeters << Tweeter.create(name: "Leon", twitter_handle: "rubybuddha")
dbc_deck.tweeters << Tweeter.create(name: "Isaac", twitter_handle: "j12coder")


pop_stars = Deck.create(name:"Pop Stars", description: "A collection of current popular musicicans")
pop_stars.tweeters << Tweeter.create(name:"Katy Perry", twitter_handle: "katyperry")
pop_stars.tweeters  << Tweeter.create(name:"Justin Bieber", twitter_handle: "justinbieber")
pop_stars.tweeters  << Tweeter.create(name:"Taylor Swift", twitter_handle: "taylorswift13")
pop_stars.tweeters  << Tweeter.create(name: "Rihanna", twitter_handle: "rihanna")
pop_stars.tweeters  << Tweeter.create(name: "Justin Timberlake", twitter_handle: "jtimberlake")
pop_stars.tweeters  << Tweeter.create(name: "Britney Spears", twitter_handle: "britneyspears")
pop_stars.tweeters  << Tweeter.create(name: "Bruno Mars", twitter_handle: "BrunoMars")
pop_stars.tweeters  << Tweeter.create(name: "Miley Cyrus", twitter_handle: "MileyCyrus")
pop_stars.tweeters  << Tweeter.create(name: "Nicki Minaj", twitter_handle: "NICKIMINAJ")
pop_stars.tweeters  << Tweeter.create(name: "Kanye West", twitter_handle: "kanyewest")

repub_pres_can = Deck.create(name:"Republican Presidential Candidates", description: "Current and Potential 2016 Republican Presidential Candidates")
repub_pres_can.tweeters << Tweeter.create(name: "Jeb Bush", twitter_handle: "JebBush")
repub_pres_can.tweeters << Tweeter.create(name: "Dr. Ben Carson", twitter_handle: "RealBenCarson")
repub_pres_can.tweeters << Tweeter.create(name: "Chris Christie", twitter_handle: "GovChristie")
repub_pres_can.tweeters << Tweeter.create(name: "Ted Cruz", twitter_handle:"tedcruz")
repub_pres_can.tweeters << Tweeter.create(name: "Mark Everson", twitter_handle:"MarkForAmerica")
repub_pres_can.tweeters << Tweeter.create(name: "Carly Fiorina", twitter_handle:"CarlyFiorina")
repub_pres_can.tweeters << Tweeter.create(name: "Lindsay Graham", twitter_handle:"LindseyGrahamSC")
repub_pres_can.tweeters << Tweeter.create(name: "Mike Huckabee", twitter_handle:"GovMikeHuckabee")
repub_pres_can.tweeters << Tweeter.create(name: "Bobby Jindal", twitter_handle:"BobbyJindal")
repub_pres_can.tweeters << Tweeter.create(name: "John Kasich", twitter_handle: "JohnKasich")
repub_pres_can.tweeters << Tweeter.create(name: "George Pataki", twitter_handle: "GovernorPataki")
repub_pres_can.tweeters << Tweeter.create(name: "Rand Paul", twitter_handle: "RandPaul")
repub_pres_can.tweeters << Tweeter.create(name:"Rick Perry", twitter_handle:"GovernorPerry")
repub_pres_can.tweeters << Tweeter.create(name:"Marco Rubio", twitter_handle:"marcorubio")
repub_pres_can.tweeters << Tweeter.create(name:"Rick Santorum", twitter_handle:"RickSantorum")
repub_pres_can.tweeters << Tweeter.create(name:"Donald Trump", twitter_handle:"realDonaldTrump")
repub_pres_can.tweeters << Tweeter.create(name:"Scott Walker", twitter_handle:"ScottWalker")

comedians = Deck.create(name:"Comedians", description:"Current Popular Comedians")
comedians.tweeters << Tweeter.create(name:"Amy Schumer", twitter_handle:"amyschumer")
comedians.tweeters << Tweeter.create(name:"Aziz Ansari", twitter_handle: "azizansari")
comedians.tweeters << Tweeter.create(name:"Russell Peters", twitter_handle: "therealrussellp")
comedians.tweeters << Tweeter.create(name:"Eddie Izzard", twitter_handle: "eddieizzard")
comedians.tweeters << Tweeter.create(name:"Jimmy Fallon", twitter_handle: "jimmyfallon")
comedians.tweeters << Tweeter.create(name:"John Oliver", twitter_handle: "iamjohnoliver")
comedians.tweeters << Tweeter.create(name:"Conan O'Brien", twitter_handle: "ConanOBrien")
comedians.tweeters << Tweeter.create(name:"Jimmy Kimmel", twitter_handle: "jimmykimmel")
comedians.tweeters << Tweeter.create(name:"Ellen DeGeneres", twitter_handle: "TheEllenShow")
comedians.tweeters << Tweeter.create(name:"Bo Burnham", twitter_handle: "boburnham")
comedians.tweeters << Tweeter.create(name:"Kathy Griffin", twitter_handle: "kathygriffin")
comedians.tweeters << Tweeter.create(name:"Zach Galifianakis", twitter_handle: "galifianakisz")
comedians.tweeters << Tweeter.create(name:"Chris Rock", twitter_handle: "chrisrock")
comedians.tweeters << Tweeter.create(name:"Margaret Cho", twitter_handle: "margaretcho")
comedians.tweeters << Tweeter.create(name:"Mindy Kaling", twitter_handle:"mindykaling")

movie_stars = Deck.create(name:"TV and Movie Stars", description:"Popular Actors and Actresses")
movie_stars.tweeters << Tweeter.create(name:"Chris Pratt", twitter_handle:"prattprattpratt")
movie_stars.tweeters << Tweeter.create(name:"Jennifer Lawrence", twitter_handle:"Itsjslaw")
movie_stars.tweeters << Tweeter.create(name:"Leonardo DiCaprio", twitter_handle:"LeoDiCaprio")
movie_stars.tweeters << Tweeter.create(name:"Samuel L. Jackson", twitter_handle:"SamuelLJackson")
movie_stars.tweeters << Tweeter.create(name:"James Franco", twitter_handle:"JamesFrancoTV")
movie_stars.tweeters << Tweeter.create(name:"Lena Dunham", twitter_handle:"lenadunham")
movie_stars.tweeters << Tweeter.create(name:"Tom Hanks", twitter_handle:"tomhanks")
movie_stars.tweeters << Tweeter.create(name:"Neil Patrick Harris", twitter_handle:"ActuallyNPH")
movie_stars.tweeters << Tweeter.create(name:"Ashtun Kutcher", twitter_handle:"aplusk")
movie_stars.tweeters << Tweeter.create(name:"Aaron Paul", twitter_handle:"aaronpaul_8")
movie_stars.tweeters << Tweeter.create(name:"Anna  Kendrick", twitter_handle:"AnnaKendrick47")
movie_stars.tweeters << Tweeter.create(name:"Sofia Vergara", twitter_handle:"SofiaVergara")
movie_stars.tweeters << Tweeter.create(name:"Kevin Spacey", twitter_handle:"KevinSpacey")
movie_stars.tweeters << Tweeter.create(name:"Hugh Jackman", twitter_handle:"RealHughJackman")



