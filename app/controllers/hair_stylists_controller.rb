class HairStylistsController < ApplicationController

  def index
    @hair_stylists = HairStylist.all

    respond_to do |format|
      format.html {render :index}
      format.json { render json: @hair_stylists }
  end
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

def most_appointments

@stylist = HairStylist.max_appointments # [hair_stylist_id , total of appointments]
@hairstylist = HairStylist.find_by_id(@stylist[0])
@count_appointments = @stylist[1]

end

end
