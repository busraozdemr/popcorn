@ignore
Feature: Authentication

  Background:
    * url 'https://reqres.in/api/'

  Scenario: authentication with params
 #  * def params =
 #  """
 #  {
 #    'email':'#(email)',
 #    'password':'#(password)'
 #  }
 #  """
 #  When path 'oauth2/token'
 #  When form field grant_type = 'client_credentials'
 #  And form fields params
 #  When method POST
 #  Then status 200

 #  * def accessToken = response.token
 #  Then print 'accessToken ---> ', accessToken

    * def response = {access_token : "bla bla bla"}
    * def accessToken = response.access_token
    Then print 'accessToken ---> ', accessToken