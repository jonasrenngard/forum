class PostsController < ApplicationController

  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.new(post_params)

    if @post.save
      redirect_to :back

    else
      render 'topics/show'
    end
  end

  private

  def post_params
    params.require( :post ).permit(:content).merge user: current_user
  end
end
