class GossipsController < ApplicationController
  def show
  	@gossip = Gossip.find(params[:id])
  end

  def edit
  end

  def new
    @gossip = Gossip.new
  end

  def create
	  @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 1)
	  if @gossip.save
	    redirect_to root_path(@gossip)
	  else
	    render '/gossips/new/'
	  end


  end

  def destroy
  end
end
