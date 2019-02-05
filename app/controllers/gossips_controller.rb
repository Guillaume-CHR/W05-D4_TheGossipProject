class GossipsController < ApplicationController
  def show
  	@gossip = Gossip.find(params[:id])
  end

  def edit
  end

  def create
  end

  def destroy
  end
end
