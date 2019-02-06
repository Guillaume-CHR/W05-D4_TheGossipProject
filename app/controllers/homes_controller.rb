class HomesController < ApplicationController
  def welcome
  	@text = params[:welcome]
  end

  def index
  	puts "v"*100
  	puts @gossip.inspect
  	puts @gossip
  	puts "^"*100
  	
  	@gossip = nil

  	puts "v"*100
  	puts @gossip.inspect
  	puts @gossip
  	puts "^"*100
  end

  def team
  end

  def contact
  end
end
