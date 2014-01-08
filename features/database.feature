Feature:  Working with password databases

  Scenario: Creating a new database
    Given we create a new database "Super Secret" with the password "pa$$w0rd"
    When we relaunch the application
    Then the "Super Secret" database is loaded when we relaunch

