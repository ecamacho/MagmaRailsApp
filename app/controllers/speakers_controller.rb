class SpeakersController < UITableViewController

	def init
		if super						
      @speakers_magistrales = Speaker::AllMagistrales
      @speakers = Speaker::All
		end
		self				
	end
	
	def viewDidLoad
		navigationItem.title = "Speakers"
    navigationController.navigationBar.tintColor = UIColor.colorWithRed( 255/100, green:0.0, blue:0.0, alpha:1.0)
    view.backgroundColor = UIColor.colorWithRed( 34.0/100.0, green:34.0/100.0, blue:34.0/100.0, alpha:1.0 )
    view.separatorStyle = UITableViewCellSeparatorStyleSingleLine
    view.separatorColor = UIColor.whiteColor
    view.dataSource = view.delegate = self

  end
  
  def numberOfSectionsInTableView(tableView)
    2
  end  

  def tableView(tableView, numberOfRowsInSection:section)
    if section == 0
      @speakers_magistrales.size
    else
      @speakers.size
    end  
  end

  
  def tableView(tableView, didSelectRowAtIndexPath:indexPath)
   	speaker = speakerForIndexPath indexPath
    
    speakerController = SpeakerController.alloc.initWithNibName('SpeakerView', bundle:nil)    
    
    speakerController.speaker = speaker
    
   	navigationController.pushViewController speakerController, animated:true
  end

  
  def tableView(tableView, viewForHeaderInSection:section)
    header_view = UIView.alloc.init    
    header_view.backgroundColor = UIColor.colorWithRed( 100/100, green:204/100, blue:51.0/100.0, alpha:1.0 )
    label = UILabel.alloc.initWithFrame([[0,0],[320,20]])              
    label.text = unless section == 1 then 'Conferencias Magistrales' else 'Conferencistas' end
    label.font = UIFont.fontWithName('Arial', size:12)
    label.textAlignment = UITextAlignmentCenter
    label.backgroundColor = UIColor.clearColor
    header_view.addSubview(label)
    header_view
  end  


  def tableView(tableView, heightForRowAtIndexPath:indexPath)
    speaker = speakerForIndexPath( indexPath )
    if indexPath.section == 0
      SpeakerCell.heightForSpeaker(speaker, tableView.frame.size.width)
    else
      SpeakerCell.heightForSpeaker(speaker, tableView.frame.size.width)  
    end    
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    speaker = speakerForIndexPath( indexPath )
    SpeakerCell.cellForSpeaker(speaker, inTableView:tableView)
  end
  
  def reloadRowForSpeaker(speaker)
    row = @speakers.index(speaker)
    section = 0    
    if not row
      row = @speakers_magistrales.index(speaker)      
      section = 1
    end  
    if row
      view.reloadRowsAtIndexPaths([NSIndexPath.indexPathForRow(row, inSection:section)], withRowAnimation:false)
    end
  end
	

  def speakerForIndexPath(indexPath)
    if indexPath.section == 0
      @speakers_magistrales[indexPath.row]
    else
      @speakers[indexPath.row]
    end     
  end  

end	