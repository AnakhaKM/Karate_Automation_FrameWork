#  From json file read body
Feature: Update record

  Background:
    * def body = read('classpath://json//update_record.json')
    * def responseOfCreateRecord = call read("classpath://features/Create.feature")
  Scenario: verify user can update record
    Given url host
    And path '/update/' + responseOfCreateRecord.response.id
    And header Content-Type = 'application/json'
    And header  Accept = 'application/json'
    And request body
    When method put
    Then status 200
    And print response;