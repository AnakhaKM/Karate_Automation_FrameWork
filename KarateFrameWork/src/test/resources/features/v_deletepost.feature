Feature: Validate User can delete add post

  Scenario: verify user can delete post
    Given url host
    And  path "/1"
    And header Content-Type = "application/json"
    When method delete
    Then status 204
    And print response