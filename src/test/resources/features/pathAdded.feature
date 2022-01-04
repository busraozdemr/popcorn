@ignore
Feature: Basic Get Call

  Background:
    * def expectedOutput = read('../json/all.json')
    * url 'https://reqres.in/api/users/'
    
    
  Scenario: basic get call 2
    Given path 2
    And method GET
    Then status 200
    Then print response
    And match response == expectedOutput[0]


  Scenario: basic get call 4
    Given path 4
    And method GET
    Then status 200
    Then print response
   