Feature: TestRunner
  Background:
#    Given url 'https://reqres.in/api/users/2'
      * url 'https://reqres.in'
#@GetMethod @Api
#  Scenario: Get Method
#
#    When method GET
#    Then status 200
#    And print 'last name of the user',response.data.last_name
##    And match response.data.last_name == 'Matsagar'
#    And print response
#    And print responseStatus
#    And print responseTime
#    And print responseType
#    And print responseBytes
#    And print responseHeaders['Content-Type'][0]
#    And print responseHeaders['Connection'][0]
#    And print responseHeaders
#    And print responseCookies
#    And print requestTimestamp

  ## Passing multiple headers - 1st way
  @GetMethod @headers
#  Scenario: Passing multiple headers 1st way - Get Method with path
#
#    * header Content-Type = "application/json"
#    Given path "/api/users/2"
#    When method GET
#    Then status 200
#    And print response
#    And print 'User First Name: ',response.data.first_name

#    # Passing multiple headers - 2nd way
#  Scenario: Passing multiple headers 2nd way - Get Method with path
#    * def request_headers = {"Content-Type": "application/json","accept": "application/json"}
#    Given path "/api/users/2"
#    And headers request_headers
#    When method GET
#    Then status 200
#    And print response

    #    # Passing multiple headers - 3nd way
  Scenario: Passing multiple headers 3nd way - Get Method with path
    * configure headers = {"Content-Type": "application/json","accept": "application/json"}
    Given path "/api/users/2"
    When method GET
    Then status 200
    And print response

  @API
  Scenario: Use of Param keyword - Get Method with path
    * def req_headers = {"Content-Type": "application/json"}
    Given path "/api/users"
    And headers req_headers
    And param page = "1"
    When method GET
    Then status 200
    And print response