class HairStylistsController < ApplicationController

  def index
    @hair_stylists = HairStylist.all
  end

  def new
HairStylist.create({:name => 'Nicholas'} )
#@hair_stylist.save

  end

  def destroy
    HairStylist.find(5).destroy
    #@hair_stylist.destroy
    #redirect_to root_path

  end

  def show

  end



end
