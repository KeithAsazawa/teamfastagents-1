class PagesController < ApplicationController
 
  def index
    @listings = Listing.all 	
  end

  def blog
  end

  def contact
  end

  def about
  end

  def floorplans
  end
end
