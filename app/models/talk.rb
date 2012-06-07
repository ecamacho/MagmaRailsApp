class Talk

	attr_accessor :title, :speaker, :hour

	def initialize( title, speaker, hour)
		@title = title
		@speaker = speaker
		@hour = hour		
	end	

	Wednesday = [
		Talk.new( 'Registro', '', '8:00'),
		Talk.new( 'Bienvenida', '', '9:00'),
		Talk.new( 'Keynote', 'Scott Chacon', '9:30'),
		Talk.new( 'Startups.rb', 'César Salazar', '10:30'),
		Talk.new( 'Coffee Break', '', '11:15'),
		Talk.new( 'Startups mx', 'Paco Viramontes', '11:35'),
		Talk.new( 'Getting started with Backbone, JS and Rails', 'Les Hill', '12:20'),
		Talk.new( 'Pair Programming on Rails', 'Federico Ramallo', '13:05'),
		Talk.new( 'Lunch Break', '', '13:50'),
		Talk.new( 'Am I in the path to enlightenment?', 'Ismael Marín', '16:00'),
		Talk.new( 'API: Assumptions probably incorrect', 'Wesley Beary', '16:40')
	]
	Thursday = []
	Friday = []
end