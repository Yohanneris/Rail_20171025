class GossipsController < ApplicationController

  def new
  end

  def home
  end

  def create
    @article = Gossips.new(params:new)

    @article.save
    redirect_to @article
  end

private
  def gossip_params
  params.require(:new).permit(:title, :text)
  end
end
