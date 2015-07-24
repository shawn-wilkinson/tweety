# get '/games/:deck_id/new' do

#   #The user decides to play a game by clicking on a deck
# #A new intance of the game class is created with that deck as it's deck
# #after the game is initilized, new_game.populate_questions is run.
# #this method scrapes the 'tweeters' of that deck and creates 20(or whatever) suitable question instances
#   @deck = Deck.find(params[:deck_id])
#   @game = Game.create(deck: @deck, user: current_user)
#   @game.populate_questions

    # redirect "/games/#{@game.id}/questions/1"


# end

# dbc_deck = Deck.create(name:"DBC STAFF")

