class SpeakerCell < UITableViewCell
	CellID = 'SpeakerCell'

	def self.cellForSpeaker(speaker, inTableView:tableView)
    cell = tableView.dequeueReusableCellWithIdentifier(SpeakerCell::CellID) || SpeakerCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CellID)
    cell.fillWithSpeaker(speaker, inTableView:tableView)
    cell.selectionStyle = UITableViewCellSelectionStyleGray

    cell
  end
 
  def initWithStyle(style, reuseIdentifier:cellid)
    if super
      self.textLabel.numberOfLines = 0
      self.textLabel.font = UIFont.systemFontOfSize(14)
    end
    self
  end
 
  def fillWithSpeaker(speaker, inTableView:tableView)
    self.textLabel.text = speaker.name
    
    unless speaker.profile_image
      self.imageView.image = nil
      Dispatch::Queue.concurrent.async do
        profile_image_data = NSData.alloc.initWithContentsOfURL(NSURL.URLWithString(speaker.image_url))
        
        if profile_image_data
        
          speaker.profile_image = UIImage.alloc.initWithData(profile_image_data)
          Dispatch::Queue.main.sync do
            self.imageView.image = speaker.profile_image
        
            tableView.delegate.reloadRowForSpeaker(speaker)
          end
        end
      end
    else
      self.imageView.image = speaker.profile_image
    end
  end

  def self.heightForSpeaker(speaker, width)
    constrain = CGSize.new(width - 57, 1000)
    size = speaker.name.sizeWithFont(UIFont.systemFontOfSize(14), constrainedToSize:constrain)
    [57, size.height + 8].max
  end

  def layoutSubviews
    super
    self.imageView.frame = CGRectMake(2, 2, 49, 49)
    self.backgroundColor = UIColor.colorWithRed( 34.0/100.0, green:34.0/100.0, blue:34.0/100.0, alpha:1.0 )
    label_size = self.frame.size
    self.textLabel.frame = CGRectMake(57, 0, label_size.width - 59, label_size.height)
    self.textLabel.textColor = UIColor.colorWithRed( 247.0/255.0, green:148.0/255.0, blue:29.0/255.0, alpha:1.0 )
  end
end	