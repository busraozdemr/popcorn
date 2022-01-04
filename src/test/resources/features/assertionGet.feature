@ignore
Feature: Assertions

  Background:
    * url 'https://reqres.in/api/users'
    * def expectedOutput = read('../json/assertion.json')

  Scenario: assertion
    Given param page = 2
    And method GET
    Then status 200
    Then match response == expectedOutput
    Then match response.data[*].id contains [7,8,9]
    Then match response..id contains [7,8,9]
    And assert response.total > 10
    #https://github.com/karatelabs/karate marker kısmından değerlere bakabilirsin
    Then match response.total == '#number'

    * def a = 'Hello'
    * def b = 'Hello'
    And assert a == b

 #  * def foo = {hello:'word',learn:'karate'}
 #  * def test = {hello:'word',learn:'karate'}
 #  * match foo == test

 #  * def bus = {hello:'word'}
 #  * match bus == {hello:'word'}

 #  * def bustest = {hello:'word'}
 #  * def testbus = {hello:'wordz'}
 #  * match bustest != testbus