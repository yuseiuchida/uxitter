class PostsController < ApplicationController
  def index
    @posts = Post.order(count: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    exchange_params = Post.exchange(post_params)
    @post = Post.new(exchange_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def good
    @post = Post.find(params[:id])
    @post.update(count: @post.count + 1)
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:name, :before)
  end
end
