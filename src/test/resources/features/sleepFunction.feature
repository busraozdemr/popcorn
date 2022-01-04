@ignore
Feature: Basic Get Call

  Background:
    * def sleep =
    """
    function(seconds){
      for(i=0;i<=seconds;i++){
        java.lang.Thread.sleep(1*1000);
      }
    }
    """


  Scenario: basic get call
    Given url 'https://reqres.in/api/users/2'
    And method GET
    Then status 200
    Then print response
    * call sleep 10


