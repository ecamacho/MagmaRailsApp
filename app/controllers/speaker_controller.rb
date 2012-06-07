class SpeakerController < UIViewController

	SPEAKER_IMAGE_TAG = 1

	SPEAKER_LABEL_TAG = 2

	SPEAKER_WEBVIEW_TAG = 3

	attr_accessor :speaker

  	def initWithNibName(nibNameOrNil, bundle:nibBundleOrNil)
    	super 
    	
    	self
  	end

  	def viewDidLoad
  		view.backgroundColor = UIColor.colorWithRed( 34.0/100.0, green:34.0/100.0, blue:34.0/100.0, alpha:1.0 )    	
  		navigationItem.title = 'Speaker'
  		attachOutlets
  		puts "viewDidLoad #{@speaker}"
  		@speaker_label.text = @speaker.name
  		body = "<body bgcolor='#575757' style='color:white;'>#{@speaker.description}</body>"
  		@speaker_webview.loadHTMLString body, baseURL:nil 
  		loadSpeakerImage
  	end	

  	def attachOutlets
  		add_outlet :speaker_image, toControlWithTag:SPEAKER_IMAGE_TAG
  		add_outlet :speaker_label, toControlWithTag:SPEAKER_LABEL_TAG
  		add_outlet :speaker_webview, toControlWithTag:SPEAKER_WEBVIEW_TAG
  	end	

  	def loadSpeakerImage
  		if @speaker.profile_image
  			@speaker_image.image = @speaker.profile_image
  		else
  			Dispatch::Queue.concurrent.async do
        		profile_image_data = NSData.alloc.initWithContentsOfURL(NSURL.URLWithString(@speaker.image_url))
        
        		if profile_image_data        
          			@speaker.profile_image = UIImage.alloc.initWithData(profile_image_data)
          			Dispatch::Queue.main.sync do
            			@speaker_image.image = @speaker.profile_image                   
          			end
        		end
      		end
  		end	
  	end
  	


end