class LoginController < ApplicationController

  def login
  	@user = User.find_by_username(params [:username])
  	#if the password is the same with the database, show page but if not, error page
  	if (@user!= nil && @user.password == params [:password])
  		redirect_to '/'
  	else
  		#isntead of giving error message (render 'error'), just bring the user back to login page using redirect method
  		redirect_to '/login'
  	end
  end
end