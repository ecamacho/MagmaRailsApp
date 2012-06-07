class VenueController < UIViewController

	def loadView
		self.view = UIView.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame)
    	view.autoresizingMask = UIViewAutoresizingFlexibleHeight
    	view.autoresizesSubviews = true
    	view.backgroundColor = UIColor.whiteColor
    	@map = MKMapView.alloc.init
   		@map.delegate = self
   		@map.frame = self.view.bounds
   		view.addSubview @map
	end

	def viewDidLoad	
		navigationItem.title = "Sede"
		navigationController.navigationBar.tintColor = UIColor.colorWithRed( 255/100, green:0.0, blue:0.0, alpha:1.0)
		marker = venue_marker
		@map.addAnnotation marker
		region = MKCoordinateRegionMake(CLLocationCoordinate2D.new(marker.coordinate.latitude, marker.coordinate.longitude), 
										MKCoordinateSpanMake(0.05, 0.05))
    	@map.setRegion(region)
	end	
	
	def venue_marker
		#19.125076,-104.400415
		marker = Venue.new( 19.125076, -104.400415, 'Centro de Educación Tecnológica, Universidad de Colima', 
							'Carretera Manzanillo-Cihuatlán kilometro 20 El Naranjo' )
		marker
	end	
	
	
end	