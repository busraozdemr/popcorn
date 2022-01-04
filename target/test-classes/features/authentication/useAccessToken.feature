@ignore
Feature: use accessToken

  Background:
   # * def myFeature = call read('generateAccessToken.feature'){email:'eve.holt@reqres.in',password:'pistol'}
    * def myFeature = call read('generateAccessToken.feature')
    * def authToken = myFeature.accessToken

  Scenario: get call
  # When url 'https://reqres.in/api/users?page=2'
  # And header Authorization = authToken
  # When method GET
  # Then status 204

    Then print authToken