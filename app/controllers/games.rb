get '/games/new/:deck_id' do
  deck = Deck.find(params[:deck_id])
  game = Game.create(deck: deck, user: current_user)
  @user = current_user
  game.populate_questions
  session[:question_id] = game.questions.first.id
  session[:game_id] = game.id
  @question = Question.find(session[:question_id])
  erb :'questions/show'
end

get '/games/results/:id' do
  @game = Game.find(params[:id])
  erb :'games/results'
end

post '/questions/guess/:tweeter_id' do
  guessed_tweeter = Tweeter.find(params[:tweeter_id])
  question = Question.find(session[:question_id])
  question.guessed_tweeter = guessed_tweeter
  question.save
  actual_tweeter = question.tweeter

  if request.xhr?
    if question.correct?
      erb :"/questions/_successful_guess", layout: false
    else
      erb :"/questions/_failed_guess", layout: false, locals: {tweeter: actual_tweeter}
    end
  else
    redirect '/'
  end
end

get '/games/:game_id/next_question' do
  session[:question_id] = session[:question_id] + 1
  if session[:question_id] > Game.find(params[:game_id]).questions.last.id
    @game = Game.find(params[:game_id])
    erb :"/games/results"
  else
    @question = Question.find(session[:question_id])
    @user = current_user
    erb :'questions/show'
  end
end
