Feature: Get Record based on id

  Background:
    * def responseOfCreateRecord = call read("classpath://features/Create.feature")

  Scenario: verify user can retrieve list of record
    Given url host
    And path '/employee/'  + responseOfCreateRecord.response.id
    When  method get
    Then  status 200
    And   print  response



