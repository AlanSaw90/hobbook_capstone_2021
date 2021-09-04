class PostsController < ApplicationController

  def create
    post = current_user.posts.create(post_params)

    if post.save
      redirect_to user_path(current_user), notice: "Your post was successfully created."
    else
      redirect_to user_path(current_user), notice: "There was an error."
  end
end

  def show
    @post = Post.find(params[:id])
  end 

  private
    def post_params
      params.require(:post).permit(:caption, :photo)
  end
end
