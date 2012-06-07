class Venue
	
def initialize(lat, long, title, subtitle)
    	@title = title
    	@coordinate = CLLocationCoordinate2D.new
    	@coordinate.latitude = lat
    	@coordinate.longitude = long
    	@subtitle = subtitle
end

  def title; @title; end
  def coordinate; @coordinate; end
  def subtitle; @subtitle; end

  
end