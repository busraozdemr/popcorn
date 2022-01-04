@ignore
Feature: Basic Get Call

  Background:
    * def expectedOutput = read('../../json/all.json')
   # * def feature = read('userDetail1.feature')
   # * def result = call feature
    * def result = call read('userDetail1.feature')

  Scenario: basic get call 3
    Given url 'https://reqres.in/api/users/3'
    And method GET
    Then status 200
    And match response == expectedOutput[1]
    Then print 'result ----- > ',result
    #result.response aslında postmande json body de dönen değer
    * def first_name = result.response.data.first_name
    Then print 'first_name ---- >',first_name