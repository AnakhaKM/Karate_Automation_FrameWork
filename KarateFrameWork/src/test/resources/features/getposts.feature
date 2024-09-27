Feature:  Get list of posts

  Scenario: verify user can get lists of posts
    Given url host
    When method get
    Then status 200
    And print response