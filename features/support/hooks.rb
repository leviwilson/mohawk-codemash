Before('@default_database') do
  KeePass.last_database = :default
end

Before do
  Mohawk.start
end

Before('@default_database') do
  on(OpenDatabase).verify 'pa$$w0rd'
  expect(on(MainScreen).title).to include 'default'
end

After do |scenario|
  capture_screenshot(scenario.name.gsub(/\W+/,'_')) if scenario.failed?
  Mohawk.stop
  KeePass.clean_locks
end
