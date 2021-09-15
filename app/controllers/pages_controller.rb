class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def homepage
    @welcome ="Welcome to Hobbook"
    @posts = Post.all
  end

  def about
  end
end
