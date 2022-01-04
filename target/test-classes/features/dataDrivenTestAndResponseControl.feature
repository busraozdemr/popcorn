@ignore
Feature: Post Call

  Background:
    * url 'https://reqres.in/api/users'


  Scenario Outline: post request call
    And request '{{"name": <name>,"job": <job>}}'
    When method POST
    Then status 201
    Then print 'response ----> ',response
    * def result = response

    Given path 'https://reqres.in/api/users/'+ result.id
    And method GET
    Then status 404
    Then print 'response ----> ',response
    And match response.data contains {id:'#(result.id)'}

    Examples:
      | name     | job    |
      | morpheus | leader |

