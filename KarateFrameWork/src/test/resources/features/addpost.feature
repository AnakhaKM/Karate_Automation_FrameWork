Feature: Validate User can add post

  Background:
    * def body = read("classpath://json//create_post.json")
#    * def responseOfCreateBooking = call read("classpath://features/CreateBooking.feature")

  Scenario: verify user can add post
    Given url host
    And header Content-Type = "application/json"
    And request body
    When method post
    Then status 201
    And print response