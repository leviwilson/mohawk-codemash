Before do
  KeePassSettings.write kee_check_for_update: false,
                        kee_check_for_update_configured: true
end
Before('@default_database') do
  KeePass.last_database = :default
end

Before('@populated_database') do
  KeePass.last_database = :populated
end

Before do
  Mohawk.start
end

Before('@default_database, @populated_database') do
  on(OpenDatabase).verify 'pa$$w0rd'
  expect(on(MainScreen)).to be_present
end

After do |scenario|
  capture_screenshot(scenario.name.gsub(/\W+/,'_')) if scenario.failed?
  Mohawk.stop
  KeePass.clean_locks
end
