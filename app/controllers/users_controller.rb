class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @days = Date.today - @user.registration_date
  end
end
