Feature: TestRunner
  Background:
#    Given url 'https://reqres.in/api/users/2'
    * url 'https://reqres.in'
# --------------------------------------------------------------------------------------------------
## PUT Method
# -------------------------------------------------------------------------------------------------
@API
#  Scenario: Use of PUT method keyword
#  * def req_headers = {"Content-Type": "application/json"}
#  Given path "/api/user/2"
#  And headers req_headers
#  And request
#  """
#      {
#      "last_name" : "Matsagar",
#      "first_name" : "Shiv",
#      "email" : "sagar.Matsagar@reqres.in"
#      }
#      """
#  When method PUT
#  Then status 200
#  And print response
#  And match response.first_name == "Shiv"

# ----------------------------------------------------------------------------------------------
## DELETE Method
# -------------------------------------------------------------------------------------------------
  Scenario: Use of DELETE method keyword
    * def req_headers = {"Content-Type": "application/json"}
    Given path "/api/user/2"
    And headers req_headers
    When method DELETE
    Then status 204
    And print response