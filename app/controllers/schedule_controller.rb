class ScheduleController < UIViewController

	SEGMENTED_CONTROL_TAG = 1

	SCHEDULE_TABLEVIEW_TAG = 2

	def initWithNibName(nibNameOrNil, bundle:nibBundleOrNil)
    	super 
    	view.backgroundColor = standardBackgroundColor
    	self
  	end

	def viewDidLoad	
		@talks = Talk::Wednesday	
		navigationItem.title = "Agenda"
		add_outlet :segmentedControl, toControlWithTag:SEGMENTED_CONTROL_TAG
		add_outlet :tableView, toControlWithTag:SCHEDULE_TABLEVIEW_TAG
		add_action 'changeDay:', fromControlWithTag:SEGMENTED_CONTROL_TAG, 
                                                to:self, 
                                  forControlEvents:UIControlEventValueChanged
		backgroundView = UIView.alloc.initWithFrame @tableView.bounds
		backgroundView.backgroundColor = standardBackgroundColor
		@tableView.backgroundView = backgroundView

		@segmentedControl.tintColor = magmaOrangeColor
		@tableView.dataSource = self
		@tableView.delegate = self
	end	

	def changeDay(sender)		
		loadTalksForDay sender.selectedSegmentIndex
	end	
	
	def loadTalksForDay(selectedDay)
		case selectedDay
			when 0
  				@talks = Talk::Wednesday
  			when 1
  				@talks = Talk::Thursday
  			when 2
  				@talks = Talk::Friday
  		end				
  		@tableView.reloadData
	end	

	#uitableview datasource methods
	def tableView(tableView, numberOfRowsInSection:section)    	
      	@talks.size
    end  

    
  	def tableView(tableView, cellForRowAtIndexPath:indexPath)
   		talk = @talks[indexPath.row]
    	TalkCell.cellForTalk talk, inTableView:tableView
  	end

  	#uitableview delegate methods
  	def tableView(tableView, heightForRowAtIndexPath:indexPath)
    	80
  	end
  
end	