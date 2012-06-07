$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'MagmaRails'
  app.frameworks += ['CoreLocation', 'MapKit']
  app.codesign_certificate = 'iPhone Developer: Erick Camacho (V2NZW66M9L)'
end
