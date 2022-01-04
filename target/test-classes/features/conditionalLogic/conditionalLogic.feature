Feature: conditional logic

  Background:
    * configure afterScenario =
    """
      function(){
      var info = karate.info;
      karate.log(info);
      }
    """

  @ignore
  Scenario: conditional logic
    * def filename = 'abc' == 'abc' ? 'sample1.feature' : 'sample2.feature'
    * print 'filename ----> ',filename
    * def result = call read(filename)

  @ignore
  Scenario: conditional logic not equals
    * def filename = 'abc' == 'abd' ? 'sample1.feature' : 'sample2.feature'
    * print 'filename ----> ',filename
    * def result = call read(filename)


  Scenario: conditional logic response code
    * def responseCode = 404;
    * def result = responseCode == 200 ? {} : karate.call('sample1.feature')
   # * def result = responseCode == 404 ? karate.call('sample1.feature') : {}
   # * def result = responseCode == 404 ? karate.call('sample2.feature') : karate.call('sample1.feature')
    Then print 'result ---> ',result


  Scenario: conditional logic if condition
    * def responseCode = 200;
    * if (responseCode == 200) karate.call('sample2.feature')


  Scenario: conditional logic function
    * def responseCode = 200;
    * def myfun =
           """
              function(){
                  return 'Hello'}
            """
    * if (responseCode == 200) myfun()
    * def result = responseCode == 200 ? myfun() : {}
    Then print 'result --->',result