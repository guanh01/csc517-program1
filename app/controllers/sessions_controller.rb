class SessionsController < ApplicationController
  def new
  end
  
  def create

    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = 'User logged in successfully!'
      welcome_user(user)
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
  
  def welcome
    if (logged_in?) && current_user
      welcome_user(current_user)
    else
      redirect_to login_path
    end
  end
  
  
  private
   def welcome_user(user)
      if user.is_a? Admin
        redirect_to admin_path(user)
      elsif user.is_a? Student
        redirect_to student_path(user)
      elsif user.is_a? Instructor
        redirect_to instructor_path(user)
      end 
    end
end
