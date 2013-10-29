class ZodiacsController < ApplicationController
  def show
    # Parameters: {"sign"=>"anything"}
    @zodiac = params["sign"]

    z = Zodiac.find_by({ :sign => @zodiac})
    
    @fortune = z[ :fortune]
  end
end


  