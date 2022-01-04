Feature: call Scenario from another scenario

  @tag1 @ignore
  Scenario: call 1
    * print 'first scenario'

  @tag2
  Scenario: call
    * print 'second scenario'
    * def result = call read('callscenarioFromAnotherScenario.feature@tag1')
