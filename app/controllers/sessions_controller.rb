class SessionsController < ApplicationController
  # displays login form
  def new
  end

  # checks login data and starts session
  def create
    par = login_params
    zombie = Zombie.find_by(name: par[:name])
    if zombie && zombie.authenticate(par[:password])
      # Save the user id inside the browser cookie. 
      # This is how we keep the user # logged in 
      # when they navigate around our website.
      session[:zombie_id] = zombie.id
      redirect_to root_path, notice: 'Logged in'
    else
      redirect_to login_path, alert: 'Log in failed'
    end
  end

  # deletes sesssion
  def destroy
    session[:zombie_id] = nil
    redirect_to login_path, notice: 'Logged out'
  end  
private
  def login_params
    params.permit(:name, :password)
  end
end