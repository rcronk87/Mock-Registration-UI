class RegistrationController < ApplicationController
  def user

    @userarray = ["Mark", "Rob", "Alyssa"]
    @newuser =
    if
       @userarray.include?(params[:user])
      flash.now[:error]= "User Name Taken"
    else
      # if unique create user
      UserController.new(params[:pass], params[:user],  params[:email],  params[:country],  params[:zipcode],  params[:fullname],  params[:address],  params[:city],  params[:state])
      

    end
    render "userinfo.html.erb"
  end

  def submit
    redirect_to controller: 'complete', action: 'info'
  end
end
