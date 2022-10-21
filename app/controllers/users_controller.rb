class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create; end

  def new; end

  def destroy; end
end
