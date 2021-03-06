class SessionsController < ApplicationController

  def new
  end

  def create
    user = user.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #Log the user in and redirect to usre's show page.
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  end

end
