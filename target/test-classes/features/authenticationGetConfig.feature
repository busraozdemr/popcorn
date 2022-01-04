@ignore
Feature: Karate config deneme

  Scenario: using karate-config
    * print 'authInfo --->',authInfo
    * print 'accessToken --->',authInfo.response.access_token
    * print 'auth --->',auth