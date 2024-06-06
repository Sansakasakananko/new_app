class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index 
    @posts= Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_path, notice: '投稿が完了しました。'
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path, notice:'編集が完了しました。'
    else
      render :edit
    end
  end  

  def destroy
    @post.destroy
    redirect_to posts_path, notice: '削除が完了しました。' , status: :see_other
  end


  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
