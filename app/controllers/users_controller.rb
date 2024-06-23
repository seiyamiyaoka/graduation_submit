class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @viewed_blogs = @user.viewed_blogs
    @recipes = current_user.blogs
  end
end
