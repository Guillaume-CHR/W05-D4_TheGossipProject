class GossipsController < ApplicationController
  def show
  	@gossip = Gossip.find(params[:gossip_id])
  end

  def edit
  end

  def new
  end

  def destroy
  end
end
