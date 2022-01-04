Feature: call Scenario from another scenario

  @tag1 @ignore
  Scenario: call 3
    * print 'third scenario'

  @tag2
  Scenario: call 4
    * print 'fouth scenario'
    * def result = call read('callscenarioFromAnotherScenario.feature@tag1')
