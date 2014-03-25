class PostsController < ApplicationController
  # for new post

  def new
  end
  
  # For create post
  def create
    @post = Post.create(post_params)
    redirect_to new_post_path
  end
  
  def index
    
  end
  
  private
  
  def post_params
    params.require(:post).permit(:title, :text)
  end
end
