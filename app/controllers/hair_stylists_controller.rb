class HairStylistsController < ApplicationController
  def index
    @hair_stylists = Hair_stylist.all
  end 

end
