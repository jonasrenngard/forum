class TopicsController < ApplicationController

  def show
    @topic = Topic.find(params[:id])
    @post = Post.new
    @category = Category.find(params[:category_id])

  end

  def new
    @topic = Topic.new
    @category = Category.find(params[:category_id])
  end

  def create
    @category = Category.find(params[:category_id])
    @topic = @category.topics.new(topic_params)

    if @topic.save
      redirect_to @category
    else
      render "new"
    end
  end

  private

  def topic_params
    params.require( :topic ).permit(:name).merge user: current_user
  end
end
