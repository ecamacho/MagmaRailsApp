class SpeakersController < UITableViewController

	def init
		if super			
			@items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5']
      
		end
		self				
	end
	
	def viewDidLoad
		navigationItem.title = "The list"
    
    	view.dataSource = view.delegate = self
  	end

  	def tableView(tableView, numberOfRowsInSection:section)
    	@items.size
  	end

  	CELLID = 'ItemCellIdentifier'
  	def tableView(tableView, cellForRowAtIndexPath:indexPath)
   		cell = tableView.dequeueReusableCellWithIdentifier(CELLID) || 
   		begin
   	  		cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CELLID)
     			cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton
     		cell
   		end    	
   		cell.textLabel.text = @items[indexPath.row]
   		cell
  	end

  	def tableView(tableView, accessoryButtonTappedForRowWithIndexPath:indexPath)
    	item = @items[indexPath.row]
    	puts "item selected #{item}"
    	#detailViewController = DetailViewController.alloc.init
    	#detailViewController.item = item
    	#navigationController.pushViewController(detailViewController, animated:true)
  end
	
end	