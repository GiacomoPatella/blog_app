class CommentsController < ApplicationController

  before_action :authenticate_user!

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(params[:comment].permit(:body))
    @comment.post_id = @post.id
    #post.comments << @comment
    @comment.user = current_user

    if @comment.save
    redirect_to '/posts'
    else
    render 'new'
    end
  end

end
