require 'time'
class HomesController < ApplicationController
  def welcome
  	@text = params[:welcome]
  end

  def index
    @i = 0
    
    @gossip_created = nil
    @gossip_updated = nil
    (Gossip.all).each do |gossip|
      if (gossip.created_at <= (Time.now + 1).utc) && (gossip.created_at >= (Time.now - 1).utc)
        @gossip_created = gossip
      elsif (gossip.updated_at <= (Time.now + 1).utc) && (gossip.updated_at >= (Time.now- 1).utc)
        @gossip_updated = gossip
      end
    end
  end

  def team
  end

  def contact
  end
end
