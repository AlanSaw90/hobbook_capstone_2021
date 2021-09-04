class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params.merge(user_id: current_user.id))
    
        if @comment.save 
            redirect_to post_path(@post), notice: 'Comment was successfully created'
        else 
            redirect_to post_path(@post), notice: 'There was an error'            
    end   
end  

    private
        def comment_params
            params.require(:comment).permit(:content)
        end
    end        