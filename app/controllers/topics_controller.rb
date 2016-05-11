class TopicsController < ApplicationController

  def show
    @topic = Topic.find(params[:id])
    @post = Post.new
  end
end
