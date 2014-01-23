class PostsController < ApplicationController

  def new
    @post = Post.new
  end


  def create
    @post = Post.new(params[:post].permit(:title, :content, :image))

    if @post.save
    redirect_to '/posts'
    else
    render 'new'
    end

  end


  def index
    @posts = Post.all
  end


  def edit
    @post = Post.find(params[:id])
  end


  def update
    @post = Post.find(params[:id])
    @post.update(params[:post].permit(:title, :content, :image))   #this is not the method we're defining but an Active record method called on Post
    if @post.save
    redirect_to post_path(@post)
    else
    redirect_to edit_post_path(@post)
    end
  end


  def show
    @post = Post.find(params[:id])
  end


  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to '/posts'
  end

end
