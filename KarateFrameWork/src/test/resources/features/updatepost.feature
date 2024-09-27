Feature: Validate User can update add post

  Background:
    * def body = read("classpath://json//update_post.json")
#    * def responseOfAddPost = call read("classpath://features/addpost.feature")


  Scenario: verify user can add post
    Given url host
    And  path "/1"
    And header Content-Type = "application/json"
    And request body
    When method put
    Then status 200
    And print response