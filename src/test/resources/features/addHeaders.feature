@ignore
Feature: Add Header
  
  Background:
    * def jsonPayload = read('../json/postRequest.json')
    * url 'https://reqres.in/api/users'

  Scenario: Add headers
    And request jsonPayload
    And headers {Content-Type : 'application/json' , Accept : 'application/json'}
    When method POST
    Then status 201