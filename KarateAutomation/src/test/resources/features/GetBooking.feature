Feature: Get list of booking

  Scenario: verify user can retrieve list of bookings
    Given url 'https://restful-booker.herokuapp.com/booking'
    When  method get
    Then  status 200
    And   print  response

  Scenario: verify user can create booking
    Given url "https://restful-booker.herokuapp.com/booking"
    And   header Content-Type = 'application/json'
    And   header  Accept = 'application/json'
    And   request
    """
    {
     "firstname" : "Jim",
     "lastname" : "Brown",
     "totalprice" : 111,
     "depositpaid" : true,
     "bookingdates" : {
         "checkin" : "2018-01-01",
         "checkout" : "2019-01-01"
         },
     "additionalneeds" : "Breakfast"
    }
    """
    When  method post
    Then  status 200
    And   print response

