class GossipsController < ApplicationController
  def show
  	@gossip = Gossip.find(params[:id])
  end

  def edit
    @gossip = Gossip.find(params[:id])
    puts "v" *80
    puts @gossip
    puts "^"*80
  end

  def update
    @gossip = Gossip.find(params[:id])

    if @gossip.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def new
    @gossip = Gossip.new
  end

  def create
	  @gossip = Gossip.new(post_params)
    @gossip.user_id = 1

	  if @gossip.save
	    redirect_to root_path
	  else
	    render :new
	  end
  end

  def destroy
    @gossip = Gossip.find(params[:id])

    @gossip.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:gossip).permit(:title, :content)
  end
end
