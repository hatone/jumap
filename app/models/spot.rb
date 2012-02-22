class Spot < ActiveRecord::Base
  def self.append(args)
    lat  = args[:lat]
    long = args[:long]
    msg  = args[:msg]
  
    spot = Spot.new
    spot.latitude = lat
    spot.longitude = long
    spot.note = msg
    spot.save

    return spot
  end

end
