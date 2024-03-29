class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :show, :destroy]
  before_action :authenticate_user!, except: [:index, :show ]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]


  def index
    @posts = Post.order("created_at DESC")
  end

  def new
    @post = Post.new
  end


  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def edit
   
  end

  def update
    
    if @post.update(post_params)
      redirect_to post_path
    else
      render :edit
    end
  end

  def  destroy
    if @post.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end


 private

 def post_params
  params.require(:post).permit(:image,:title,:text).merge(user_id: current_user.id)
 end

 def set_post
  @post = Post.find(params[:id])
end

 def contributor_confirmation
  redirect_to root_path unless current_user == @post.user
 end

end
