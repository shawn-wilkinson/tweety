get '/users/new' do
  p 'got to the route'
  if request.xhr?
    p 'got to xhr'
    @user = User.new
    p 'user created!'
    erb :"users/_new", layout: false, locals: {user: @user}
  end
  p 'exiting route'
end

post '/users/new' do
  @user = User.create(params[:user])
  if @user.save
    session[:user_id] = @user.id
    @decks = Deck.all
    redirect "/users/#{@user.id}/profile"
  else
    redirect "/"
  end
end

get '/users/login' do
  p 'we got to the route'
  if request.xhr?
    @user = User.new
    erb :"users/_login", layout: false, locals: {user: @user}
  end
end

post '/users/login' do
  if @user = User.authenticate(params[:user][:name],params[:user][:password])
    session[:user_id] = @user.id
    @decks = Deck.all
    redirect "/users/#{@user.id}/profile"
  end
  redirect "/"
end

get '/users/logout' do
  session[:user_id] = nil
  redirect "/"
end

get '/users/:id/profile' do
  @user = User.find(params[:id])
  @decks = Deck.all
  if current_user == @user
    erb :"users/profile"
  else
    redirect "/"
  end

end
