@ignore
Feature: Call Function

  Background:
    * def expectedOutput = read('../json/all.json')

  Scenario: call function1
    Given url 'https://reqres.in/api/users/2'
    And method GET
    Then status 200
    * def myFun1 = function(){return 'Hello'}
    * def returnedData1 = call myFun1
    Then print 'returnedData1 ----->',returnedData1
    * def myFun2 =
    """
    function(){
      return 'myData'
    }
    """
    * def returnedData2 = call myFun2
    Then print 'returnedData2 ------>',returnedData2


  Scenario: call function length in bulunması
    Given url 'https://reqres.in/api/users?page=2'
    And method GET
    Then status 200
    * def data = response.data
    Then print 'data --->',data
    * def myFun =
    """
    function(arg){
    return arg.length
    }
    """
    * def numberOfUsers = call myFun data
    Then print 'numberOfUsers ----> ',numberOfUsers


  Scenario: call function id değerinin çekilmesi ve fonksiyona parametre eklenmesi
    Given url 'https://reqres.in/api/users?page=2'
    And method GET
    Then status 200
    * def data = response.data
    Then print 'data --->',data
    * def myFun =
    """
    function(arg){
    return arg[0].id
    }
    """
    * def numberOfUsers = call myFun data
    Then print 'numberOfUsers ----> ',numberOfUsers


  Scenario: call function if condition
    Given url 'https://reqres.in/api/users?page=2'
    And method GET
    Then status 200
    * def data = response.data
    Then print 'data --->',data
    * def myFun =
    """
    function(arg){
      for(i=0;i<arg.length;i++){
      if(arg[i].id == 9){
      return arg[i]
      }
      }
    }
    """
    * def numberOfUsers = call myFun data
    Then print 'numberOfUsers ----> ',numberOfUsers


  Scenario: call function two parameters
    * def sum =
    """
    function(a,b){
    return a+b;
    }
    """
    * def result = sum(1,2)
    Then print result