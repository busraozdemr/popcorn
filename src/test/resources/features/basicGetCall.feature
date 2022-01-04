@ignore
Feature: Basic Get Call

  Background:
    * url someUrl
  
  Scenario: basic get call
    Given path '/users/2'
    And method GET
    Then status 200
    Then print response