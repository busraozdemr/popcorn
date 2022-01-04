@ignore
Feature: Post Call
  
  Background:
    * def jsonPayload = read('../json/postRequest.json')
    * url 'https://reqres.in/api/users'
    
  
  Scenario: post request call
    #url i yukarıda tanımlarsak buna artık ihtiyacımız kalmaz
    #Given url 'https://reqres.in/api/users'
    And request jsonPayload
    #json body i postRequest.json şeklinde tanımlarsak alttakine artık ihtiyacımız kalmaz
  #  And request '{{"name": "morpheus","job": "leader"}}'
    When method POST
    Then status 201