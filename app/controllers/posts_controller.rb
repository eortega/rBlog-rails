class PostsController < ApplicationController
  def index
    @categories = Category.all
    if params[:search]
      @posts = Post.search(params[:search]).all.order('created_at DESC').paginate(:page => params[:page], :per_page => 10)
    else
      @posts = Post.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 10)
    end
  end

  def show
    @post = Post.find(params[:id])
    @categories = Category.all
    @comment = Comment.new
    @comments = Comment.all
  end
end
