Feature: Delete record
  Background:
    * def responseOfCreateRecord = call read("classpath://features/Create.feature")
    Scenario: Verify user can delete record
      Given url host
      And  path "/delete/" + responseOfCreateRecord.response.id
      When  method delete
      Then  status 200
      And   print  response
