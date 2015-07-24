get '/games/new/:deck_id' do
  @game = Game.create(deck: @deck, user: current_user)
  @game.populate_questions
  redirect "/games/#{@game.id}/questions/1"
end

get 'games/:game_id/questions/:id' do
  @question = Question.find_by game_id: params[:game_id], question_id: params[:id]
 # how do we iterate to the next question?
  eb :'questions/show'
end

