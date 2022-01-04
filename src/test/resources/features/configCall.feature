@ignore
Feature: Basic Get Call

  #testin terminalden çalışması için   ----->  mvn test -Dkarate.env=qa
  # mvn test yazarsak terminale default config değeri gelecektir

  Scenario: basic get call
    Given url someUrl
    And method GET
    Then status 200
    Then print response