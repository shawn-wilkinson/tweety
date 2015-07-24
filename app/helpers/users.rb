def current_user
  User.find(session[:user_id])
end

def logged_in
  if session[:user_id] == nil
    return false
  else
    return true
  end
end
