
tweeters = []
dbc_deck = Deck.create(name:"DBC STAFF", description: "Make fun of your favorite DBC staff")
tweeters << Tweeter.create(name: "Matt", twitter_handle: "mattbaker")
tweeters << Tweeter.create(name: "Mike", twitter_handle: "mikelikesbikes")
tweeters << Tweeter.create(name: "Casey", twitter_handle: "case_eee")
tweeters << Tweeter.create(name: "Duke", twitter_handle: "dukegreene")
tweeters << Tweeter.create(name: "Courtney", twitter_handle:"courtneyU88")
tweeters << Tweeter.create(name: "Alyssa", twitter_handle: "alycit")
tweeters << Tweeter.create(name: "Lucas", twitter_handle: "ltw_")
tweeters << Tweeter.create(name: "Leon", twitter_handle: "rubybuddha")
tweeters << Tweeter.create(name: "Isaac", twitter_handle: "j12coder")
tweeters.each do |person|
  Inclusion.create(deck: dbc_deck, tweeter: person)
end

tweeters = []
pop_stars = Deck.create(name:"Pop Stars", description: "A collection of current popular musicicans")
tweeters << Tweeter.create(name:"Katy Perry", twitter_handle: "katyperry")
tweeters  << Tweeter.create(name:"Justin Bieber", twitter_handle: "justinbieber")
tweeters  << Tweeter.create(name:"Taylor Swift", twitter_handle: "taylorswift13")
tweeters  << Tweeter.create(name: "Rihanna", twitter_handle: "rihanna")
tweeters  << Tweeter.create(name: "Justin Timberlake", twitter_handle: "jtimberlake")
tweeters  << Tweeter.create(name: "Britney Spears", twitter_handle: "britneyspears")
tweeters  << Tweeter.create(name: "Bruno Mars", twitter_handle: "BrunoMars")
tweeters  << Tweeter.create(name: "Miley Cyrus", twitter_handle: "MileyCyrus")
tweeters  << Tweeter.create(name: "Nicki Minaj", twitter_handle: "NICKIMINAJ")
tweeters  << Tweeter.create(name: "Kanye West", twitter_handle: "kanyewest")
tweeters.each do |person|
  Inclusion.create(deck: pop_stars, tweeter: person)
end

tweeters = []
repub_pres_can = Deck.create(name:"Republican Presidential Candidates", description: "Current and Potential 2016 Republican Presidential Candidates")
tweeters << Tweeter.create(name: "Jeb Bush", twitter_handle: "JebBush")
tweeters << Tweeter.create(name: "Dr. Ben Carson", twitter_handle: "RealBenCarson")
tweeters << Tweeter.create(name: "Chris Christie", twitter_handle: "GovChristie")
tweeters << Tweeter.create(name: "Ted Cruz", twitter_handle:"tedcruz")
tweeters << Tweeter.create(name: "Mark Everson", twitter_handle:"MarkForAmerica")
tweeters << Tweeter.create(name: "Carly Fiorina", twitter_handle:"CarlyFiorina")
tweeters << Tweeter.create(name: "Lindsay Graham", twitter_handle:"LindseyGrahamSC")
tweeters << Tweeter.create(name: "Mike Huckabee", twitter_handle:"GovMikeHuckabee")
tweeters << Tweeter.create(name: "Bobby Jindal", twitter_handle:"BobbyJindal")
tweeters << Tweeter.create(name: "John Kasich", twitter_handle: "JohnKasich")
tweeters << Tweeter.create(name: "George Pataki", twitter_handle: "GovernorPataki")
tweeters << Tweeter.create(name: "Rand Paul", twitter_handle: "RandPaul")
tweeters << Tweeter.create(name:"Rick Perry", twitter_handle:"GovernorPerry")
tweeters << Tweeter.create(name:"Marco Rubio", twitter_handle:"marcorubio")
tweeters << Tweeter.create(name:"Rick Santorum", twitter_handle:"RickSantorum")
tweeters << Tweeter.create(name:"Donald Trump", twitter_handle:"realDonaldTrump")
tweeters << Tweeter.create(name:"Scott Walker", twitter_handle:"ScottWalker")
tweeters.each do |person|
  Inclusion.create(deck: repub_pres_can, tweeter: person)
end

tweeters = []
comedians = Deck.create(name:"Comedians", description:"Current Popular Comedians")
tweeters << Tweeter.create(name:"Amy Schumer", twitter_handle:"amyschumer")
tweeters << Tweeter.create(name:"Aziz Ansari", twitter_handle: "azizansari")
tweeters << Tweeter.create(name:"Russell Peters", twitter_handle: "therealrussellp")
tweeters << Tweeter.create(name:"Eddie Izzard", twitter_handle: "eddieizzard")
tweeters << Tweeter.create(name:"Jimmy Fallon", twitter_handle: "jimmyfallon")
tweeters << Tweeter.create(name:"John Oliver", twitter_handle: "iamjohnoliver")
tweeters << Tweeter.create(name:"Conan O'Brien", twitter_handle: "ConanOBrien")
tweeters << Tweeter.create(name:"Jimmy Kimmel", twitter_handle: "jimmykimmel")
tweeters << Tweeter.create(name:"Ellen DeGeneres", twitter_handle: "TheEllenShow")
tweeters << Tweeter.create(name:"Bo Burnham", twitter_handle: "boburnham")
tweeters << Tweeter.create(name:"Kathy Griffin", twitter_handle: "kathygriffin")
tweeters << Tweeter.create(name:"Zach Galifianakis", twitter_handle: "galifianakisz")
tweeters << Tweeter.create(name:"Chris Rock", twitter_handle: "chrisrock")
tweeters << Tweeter.create(name:"Margaret Cho", twitter_handle: "margaretcho")
tweeters << Tweeter.create(name:"Mindy Kaling", twitter_handle:"mindykaling")
tweeters.each do |person|
  Inclusion.create(deck: comedians, tweeter: person)
end

movie_stars = Deck.create(name:"TV and Movie Stars", description:"Popular Actors and Actresses")
tweeters << Tweeter.create(name:"Chris Pratt", twitter_handle:"prattprattpratt")
tweeters << Tweeter.create(name:"Jennifer Lawrence", twitter_handle:"Itsjslaw")
tweeters << Tweeter.create(name:"Leonardo DiCaprio", twitter_handle:"LeoDiCaprio")
tweeters << Tweeter.create(name:"Samuel L. Jackson", twitter_handle:"SamuelLJackson")
tweeters << Tweeter.create(name:"James Franco", twitter_handle:"JamesFrancoTV")
tweeters << Tweeter.create(name:"Lena Dunham", twitter_handle:"lenadunham")
tweeters << Tweeter.create(name:"Tom Hanks", twitter_handle:"tomhanks")
tweeters << Tweeter.create(name:"Neil Patrick Harris", twitter_handle:"ActuallyNPH")
tweeters << Tweeter.create(name:"Ashtun Kutcher", twitter_handle:"aplusk")
tweeters << Tweeter.create(name:"Aaron Paul", twitter_handle:"aaronpaul_8")
tweeters << Tweeter.create(name:"Anna  Kendrick", twitter_handle:"AnnaKendrick47")
tweeters << Tweeter.create(name:"Sofia Vergara", twitter_handle:"SofiaVergara")
tweeters << Tweeter.create(name:"Kevin Spacey", twitter_handle:"KevinSpacey")
tweeters << Tweeter.create(name:"Hugh Jackman", twitter_handle:"RealHughJackman")

tweeters.each do |person|
  Inclusion.create(deck: movie_stars, tweeter: person)
end




