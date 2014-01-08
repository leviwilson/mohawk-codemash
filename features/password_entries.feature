@default_database
Feature:  Working with password entries

  Scenario: Adding a new password
    When we add a new password to the "General" group
    Then the newly added password should be listed in the "General" group

  Scenario: Deleting a password
    Given we add a new password to the "Windows" group
    When we delete the newly added password
    Then the deleted password should no longer be listed

  Scenario: Adding multiple entries
    When we add "2" entries to the "Internet" group
    And we add "3" entries to the "Windows" group
    Then there should be a total of "5" entries
