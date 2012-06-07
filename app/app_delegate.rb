class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)  	
  	tabbar = UITabBarController.alloc.init
    tabbar.tabBar.tintColor = UIColor.colorWithRed( 255/100, green:0.0, blue:0.0, alpha:1.0)
    tabbar.viewControllers = [aboutController, scheduleController, venueController, speakersController]
    tabbar.selectedIndex = 0
    @window.rootViewController = tabbar    
    @window.makeKeyAndVisible
    true
  end

  def aboutController
  	aboutController = AboutController.alloc.initWithNibName('AboutView', bundle:nil)  	
    
  	navController = UINavigationController.alloc.initWithRootViewController aboutController
    navController.tabBarItem = UITabBarItem.alloc.initWithTitle('Magma', image:UIImage.imageNamed('magma_tab.png'), tag:1)
    navController.navigationBar.tintColor = UIColor.colorWithRed( 255/100, green:0.0, blue:0.0, alpha:1.0)
    navController    
  end	

  def scheduleController
    scheduleController = ScheduleController.alloc.initWithNibName('ScheduleView', bundle:nil)        
    
    navController = UINavigationController.alloc.initWithRootViewController scheduleController
    navController.tabBarItem = UITabBarItem.alloc.initWithTitle('Agenda', image:UIImage.imageNamed('calendar.png'), tag:2)
    navController.navigationBar.tintColor = UIColor.colorWithRed( 255/100, green:0.0, blue:0.0, alpha:1.0)
    navController    
  end 

  def speakersController
    speakersController = SpeakersController.alloc.init
    navController = UINavigationController.alloc.initWithRootViewController speakersController
    navController.tabBarItem = UITabBarItem.alloc.initWithTitle('Speakers', image:UIImage.imageNamed('bullhorn.png'), tag:3)
    navController    
  end 

  def venueController
    venueController = VenueController.alloc.init    
    navController = UINavigationController.alloc.initWithRootViewController venueController    
    navController.tabBarItem = UITabBarItem.alloc.initWithTitle('Venue', image:UIImage.imageNamed('map.png'), tag:4)
    
    navController    
  end 
end
