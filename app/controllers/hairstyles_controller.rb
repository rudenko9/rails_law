class HairstylesController < ApplicationController

  def index
  @hairstyles = Hairstyles.all 
  end

end
