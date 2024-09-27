#  From json file read body
Feature: Create record

  Background:
    * def body = read('classpath://json//create_record.json')
  Scenario: verify user can create record
    Given url host
    And path '/create'
    And header Content-Type = 'application/json'
    And header  Accept = 'application/json'
    And request body
    When method post
    Then status 200
    And print response