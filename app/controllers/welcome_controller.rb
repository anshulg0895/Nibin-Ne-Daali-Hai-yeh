class WelcomeController < ApplicationController

  def login
    Student.check_false
  end

  def check_login
    if params[:student][:email] == 'admin@abc.com' && params[:student][:password] == '123456'
      Student.check_true
      redirect_to students_path
    else
      flash[:error] = "Invalid username/password"
      redirect_to action: "login"
    end
  end
end
