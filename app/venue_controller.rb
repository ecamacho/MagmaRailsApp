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
		@map.showsUserLocation = true
	end	
	
end	