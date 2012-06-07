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
		Talk.new( 'The future of work', 'Scott Chacon', '9:30'),
		Talk.new( 'Startups.rb', 'César Salazar', '10:30'),
		Talk.new( 'Coffee Break', '', '11:15'),
		Talk.new( 'Startups mx', 'Paco Viramontes', '11:35'),
		Talk.new( 'Getting started with Backbone, JS and Rails', 'Les Hill', '12:20'),
		Talk.new( 'Pair Programming on Rails', 'Federico Ramallo', '13:05'),
		Talk.new( 'Lunch Break', '', '13:50'),
		Talk.new( 'Am I in the path to enlightenment?', 'Ismael Marín', '16:00'),
		Talk.new( 'API: Assumptions probably incorrect', 'Wesley Beary', '16:40')
	]
	Thursday = [
		Talk.new( 'Rubymotion', 'Norberto Ortigoza', '9:00'),
		Talk.new( 'Rails 4', 'Aaron Patterson', '9:30'),
		Talk.new( 'Migrate Rails Apps between Cloud and Bare Metal Server', 'Edwin Cruz', '10:30'),		
		Talk.new( 'Coffee Break', '', '11:15'),
		Talk.new( 'Learning by reading other people\'s code', 'Rafa Magaña', '11:35'),
		Talk.new( 'Go Simple', 'Blake Mizerany', '12:20'),
		Talk.new( 'De Jengas y Legos. Rails como un stack de componentes', 'Rubén Medellín', '13:05'),
		Talk.new( 'Lunch Break', '', '13:50'),
		Talk.new( 'API Development with Rails', 'Mario Chávez', '16:00'),
		Talk.new( 'Lessons learned with modern front-end development', 'Daniel Fisher', '16:40')

	]

	Friday = [
		Talk.new( 'A couple of apps to help you work and travel', '', '9:00'),
		Talk.new( 'Go fast as a developer', 'Dr Nic', '9:30'),
		Talk.new( 'Extreme programming practices', 'Gil Alvarado', '10:30'),		
		Talk.new( 'Coffee Break', '', '11:15'),
		Talk.new( 'Rails no es tu aplicación: Refactoring para patrones arquitectónicos usando DDD', 'Manuel Vidaurre', '11:35'),
		Talk.new( 'Enterprise Architecture with Ruby', 'Konstantin Gredeskoul', '12:20'),
		Talk.new( 'Bigotes en mis vistas', 'Federico Soria', '13:05'),
		Talk.new( 'Lunch Break', '', '13:50'),
		Talk.new( 'A refactoring story: moving out of ActiveRecord', 'Iván Acosta', '16:00'),
		Talk.new( 'Ruby Kids', 'Ron Evans', '16:40')

	]
end