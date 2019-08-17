class HairStylistsController < ApplicationController

  def index
    @hair_stylists = HairStylist.all
  end


end
