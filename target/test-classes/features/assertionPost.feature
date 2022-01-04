@ignore
Feature: post assertion

  Background:
    * def jsonPayload = read('../json/postRequest.json')
    * url 'https://reqres.in/api/users'
    * def expectedOutput = read('../json/assertionPost.json')

  Scenario: post request call
    And request jsonPayload
    When method POST
    Then status 201
    Then match response == expectedOutput
    Then match response.name == "morpheus"
    Then match response contains {"name":"morpheus"}
    Then match response.name contains "morpheus"
    # not contains demek istersek; Then match response.name !contains "morpheus"
    # Then match response.data contains {"name":"morpheus"}
  * def data = [1,2,3]
    Then match data contains [1]
    Then match data contains 1
    Then match data !contains [5]
    Then match data contains [1,2]
   # Then match data contains [1,6] --> not contains
    Then match data contains 1,2
   # Then match data contains 2,6 --> not contains