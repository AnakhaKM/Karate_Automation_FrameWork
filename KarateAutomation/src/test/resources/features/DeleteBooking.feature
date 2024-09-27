Feature: Delete booking
  Background:
    * def responseOfCreateToken = call read("classpath://features/CreateToken.feature")
    * def responseOfCreateBooking = call read("classpath://features/CreateBooking.feature")
    Scenario: Verify user can delete booking
      Given url host
      And  path "/booking/" + responseOfCreateBooking.response.bookingid
      And   header Cookie = 'token=' + responseOfCreateToken.response.token
      When  method delete
      Then  status 201
      And   print  response
