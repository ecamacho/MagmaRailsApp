class TalkCell < UITableViewCell

	TalkCellID = 'TalkCell'

	
	def initWithStyle(style, reuseIdentifier:cellid)
    	if super
    		@hour_label = UILabel.alloc.init

      		@speaker_label = UILabel.alloc.init 
    	end
    	self
  	end

	def self.cellForTalk(talk, inTableView:tableView)
    	cell = tableView.dequeueReusableCellWithIdentifier(TalkCell::TalkCellID) || TalkCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:TalkCellID)
    	cell.fillWithTalk(talk, inTableView:tableView)
    	cell.selectionStyle = UITableViewCellSelectionStyleGray
    	cell
  	end

  	def layoutSubviews
    	super    	
    	self.backgroundColor = UIColor.colorWithRed( 34.0/100.0, green:34.0/100.0, blue:34.0/100.0, alpha:1.0 )    	
    	label_size = self.frame.size
    	label_size.height = 40
    	@hour_label.frame= [[5,0], [label_size.width - 10, 20]]
    	@hour_label.font = UIFont.systemFontOfSize(14)
    	@hour_label.backgroundColor = UIColor.clearColor
    	@hour_label.textColor = UIColor.colorWithRed( 100/100, green:204/100, blue:51.0/100.0, alpha:1.0 )
    	self.textLabel.frame = CGRectMake(5, 15, label_size.width - 10, label_size.height)
    	self.textLabel.numberOfLines = 2
      	self.textLabel.font = UIFont.systemFontOfSize(14)
    	self.textLabel.textColor = UIColor.colorWithRed( 247.0/255.0, green:148.0/255.0, blue:29.0/255.0, alpha:1.0 )
    	@speaker_label.frame = [[5, label_size.height + 17], [label_size.width - 10, 20]]
    	@speaker_label.backgroundColor = UIColor.clearColor
    	self.addSubview @speaker_label
    	self.addSubview @hour_label
  	end

  	def fillWithTalk(talk, inTableView:tableView)
    	self.textLabel.text = talk.title
    	@speaker_label.text = talk.speaker
    	@hour_label.text = talk.hour
  	end

end