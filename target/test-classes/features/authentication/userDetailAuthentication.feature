@ignore
Feature: Authentication

  Background:
    * url 'https://reqres.in/api/register'

    Scenario: authentication
      And form field email = "eve.holt@reqres.in"
      And form field password = "pistol"
      When method POST
      Then status 200

      * def accessToken = response.token
      Then print 'accessToken ---> ', accessToken


  Scenario: authentication with params
    * def params =
    """
    {
      'email':'eve.holt@reqres.in',
      'password':'pistol'
    }
    """
    And form fields params
    When method POST
    Then status 200

    * def accessToken = response.token
    Then print 'accessToken ---> ', accessToken