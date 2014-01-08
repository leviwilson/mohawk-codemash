require 'rspec-expectations'
require 'mohawk'
require 'win32/screenshot'

World(Mohawk::Navigation)
Mohawk.app_path = './app/KeePass.exe'

DataMagic.yml_directory = 'features/support/config/data'

def capture_screenshot(name)
  Dir.mkdir('screenshots') unless Dir.exist? 'screenshots'
  now = Time.now.to_s.gsub(/\W+/, '.')
  Win32::Screenshot::Take.of(:desktop).write("screenshots/#{now}.#{name}.png")
end
