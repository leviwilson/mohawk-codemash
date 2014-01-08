@populated_database
Feature:  Searching for entries

  Scenario: Finding entries
    When I search for "elway"
    Then I should see the following results:
      | title           | user_name              |
      | Work Email      | john.elway@broncos.com |
      | Bank of America | jelway                 |
      | the twitterz    | jelway                 |

  Scenario: No Results
    When I search for "something that will not be there"
    Then the search results should be empty
