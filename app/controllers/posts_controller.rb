class PostsController < ApplicationController
  def create
    @post = Post.create(params.require(:post).permit(:content, :user_id))
    redirect_to root_path
  end
end
