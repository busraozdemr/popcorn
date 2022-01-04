@ignore
Feature: java function

  Scenario: call java function
    * def javaDemo = Java.type('JavaFunction')
    * def result = new javaDemo().nonstaticFunction();


  Scenario: call java function with parameter
    * def javaDemo = Java.type('JavaFunction')
    * def result = new javaDemo().functionWithParameter("World");
    Then print result
    Then match result == 'Hello World'
    * def result2 = javaDemo.staticFunction()

  Scenario: call java function 3
    * def javaDemo = Java.type('WriteData')
    * def result = javaDemo.writeDate();