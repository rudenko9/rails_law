class UsersController < ApplicationController
  #before_action :authenticate_user!
  before_action :user
  
  def show

  end

  private

  def user
    @user = current_user
  end

end
