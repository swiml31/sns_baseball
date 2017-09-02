class RepliesController < ApplicationController
  def new
  	@reply = Reply.new
  end

  def create
    @post = Post.find(params[:post_id])
    @reply = @post.replies.create(reply_params)

    redirect_to root_path
  end

  private
    def reply_params
      params.require(:reply).permit(:user, :body)
    end
end
