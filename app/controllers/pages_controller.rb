class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def homepage
    @welcome ="Hobbook"
    @posts = Post.all
  end

  def about
  end
end
