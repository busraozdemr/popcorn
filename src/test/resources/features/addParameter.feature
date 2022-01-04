@ignore
Feature: Add Header

  Background:
    * def jsonPayload = read('../json/postRequest.json')
    * url 'https://reqres.in/api/users'
    * header Content-Type = 'application/json'


  Scenario: Add header
    And request jsonPayload
    And param delay = 3
    When method POST
    Then status 201
