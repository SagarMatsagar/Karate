Feature: TestRunner
  Background:
#    Given url 'https://reqres.in/api/users/2'
    * url 'https://reqres.in'

  @API
  Scenario: Use of Post method keyword
    * def req_headers = {"Content-Type": "application/json"}
    Given path "/api/users"
    And headers req_headers
    And request
  """
  {
  "last_name" : "Matsagar",
  "first_name" : "Sagar",
  "email" : "Sagar.Matsagar@reqres.in"
  }
  """
    When method POST
    Then status 201
    And print response

  @ApiPostJson
#  Scenario: Reading data from json - 1st way
#    * json myReq = read('classpath:TestData/demo.json')
#    * def req_headers = {"Content-Type": "application/json"}
#    Given path "/api/users"
#    And headers req_headers
#    And request myReq
#    When method POST
#    Then status 201
#    And print response

#  Scenario: Reading data from json - 2nd way
#    * call read('classpath:TestData/demo.json') myReq
#    * def req_headers = {"Content-Type": "application/json"}
#    Given path "/api/users"
#    And headers req_headers
#    And request myReq
#    When method POST
#    Then status 201
#    And print response



# -------------------------------------------------------------------------------------------------
# Pass output from one API to another API
# -------------------------------------------------------------------------------------------------


  @API1


#  # Pass variable from one feature file to another feature file
#  Scenario: Pass variable from one feature file to another feature file
#    * json myReq = read('classpath:TestData/demo.json')
#    * json emailAddress = '{"emailAddress": "' +myReq.email+ '"}'
#    * print emailAddress
#    * call read('classpath:org/example/callingFile.feature') emailAddress


  Scenario: Get the last name of user_2
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200

    * def lastName = response.data.last_name
    * def reqData =
    """
    {"last_name":"${lastName}","first_name":"Shiv","email":"Shiv.matsagar@reqres.in"}
    """
    * replace reqData
      |token        |value   |
      |${lastName}  |lastName|
    * def req_headers = {"Content-Type": "application/json"}
    * json reqData1 = reqData

    Given path "/api/users"
    And headers req_headers
    And request reqData1
    When method POST
    Then status 201
    And print response


