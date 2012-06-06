class AboutController < UIViewController

	def loadView

		self.view = UIView.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame)
    	view.autoresizingMask = UIViewAutoresizingFlexibleHeight
    	view.autoresizesSubviews = true
    	view.backgroundColor = UIColor.whiteColor    	
	end
	
end	