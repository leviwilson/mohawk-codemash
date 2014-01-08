Given(/^we create a new database "([^"]*)" with the password "([^"]*)"$/) do |database, password|
  @password = password

  on(MainScreen).create_new
  on(CreateDatabase) do |screen|
    screen.enter_password(password)
    screen.ok
  end
  on(ConfirmPassword).confirm(password)
  on(MainScreen).save
  on(SaveDialog).save_as database
end

When(/^we relaunch the application$/) do
  on(MainScreen).close
  Mohawk.start
  on(OpenDatabase).verify(@password)
end

Then(/^the "([^"]*)" database is loaded when we relaunch$/) do |expected_database|
  expect(on(MainScreen).title).to include(expected_database)
  Dir.glob("#{expected_database}.kdb*").each {|f| File.delete f }
end