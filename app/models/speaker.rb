class Speaker
	attr_accessor :image_url, :name, :description, :profile_image

	def initialize( name, image_url, description)
		@image_url = image_url
		@name = name
		@description = description
		@profile_image = nil
	end	

	AllMagistrales = [
    	Speaker.new('Scott Chacon', 'http://assets3.magmarails.org/assets/keynotes/chacon-6fb5fbcc89bc5b7ce55589effe9a3a45.png', 
    			'GitHub'),
    	Speaker.new('Aaron Patterson', 'http://assets1.magmarails.org/assets/keynotes/patterson-b36ff0d03df411b682537ec24f100ee3.png', 
    			'AT&T Interactive'),
    	Speaker.new('Dr Nic', 'http://assets1.magmarails.org/assets/keynotes/nic-f254666fe015a8de8e2ab343a17d7c12.png', 
    			'Engine Yard')
    	
    	
  	]

    All = [
        Speaker.new('Blake Mizerany', 'http://assets2.magmarails.org/assets/speakers/blake-285910cefda1f532ac88530a7c8722d3.png', 
                'Heroku'),
        Speaker.new('Edwin Cruz', 'http://assets1.magmarails.org/assets/speakers/edwin-8901435231e206bab71d23b8cfadeb5a.png', 
                'Crowd Interactive'),
        Speaker.new('Paco Viramontes', 'http://assets3.magmarails.org/assets/speakers/francisco-9a62842383104e2862cb5b96cdb25868.png', 
                'Get Satisfaction')
        
        
    ]
end