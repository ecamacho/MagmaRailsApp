class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)  	
  	tabbar = UITabBarController.alloc.init

    tabbar.viewControllers = [aboutController, scheduleController, venueController, sponsorsController]
    tabbar.selectedIndex = 0
    @window.rootViewController = tabbar    
    @window.makeKeyAndVisible
    true
  end

  def aboutController
  	aboutController = AboutController.alloc.init
  	
    aboutController.tabBarItem = UITabBarItem.alloc.initWithTitle('Acerca', image:nil, tag:1)
  	aboutController
  end	

  def scheduleController
    scheduleController = ScheduleController.alloc.init    
    scheduleController.tabBarItem = UITabBarItem.alloc.initWithTitle('Agenda', image:nil, tag:2)
    scheduleController
  end 

  def sponsorsController
    sponsorsController = SponsorsController.alloc.init    
    sponsorsController.tabBarItem = UITabBarItem.alloc.initWithTitle('Sponsors', image:nil, tag:3)
    sponsorsController
  end 

  def venueController
    venueController = VenueController.alloc.init    
    venueController.tabBarItem = UITabBarItem.alloc.initWithTitle('Venue', image:nil, tag:4)
    venueController
  end 
end
