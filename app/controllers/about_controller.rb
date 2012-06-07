class AboutController < UIViewController

	

	def initWithNibName(nibNameOrNil, bundle:nibBundleOrNil)
    	super 
    	view.backgroundColor = UIColor.colorWithRed( 34.0/100.0, green:34.0/100.0, blue:34.0/100.0, alpha:1.0 )
    	self
  	end

  	def viewDidLoad
  		navigationItem.title = "Magma Rails"
		
  	end	
  	
end	