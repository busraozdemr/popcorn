Feature: Get Address For Order

  Background:
    * url userApiUrl
    * header accept = '*/*'

  Scenario: Get Address For Order - Success Scenario
    Given path 'Customer/Address/GetAddressForOrder'
    And header Authorization = 'Bearer ' + authorization
    And method GET
    Then status 204
    Then print response

  Scenario: Get Address For Order - Missing Authorization
    Given path 'Customer/Address/GetAddressForOrder'
    And method GET
    Then status 401
    Then print response
    And match response.messages[0] == 'User Authorization Error'
    And match response.type == 'authorization'
    And assert response.message == 'User Authorization Error'