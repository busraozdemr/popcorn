@ignore
Feature: Basic Get Call

  Scenario: basic get call

    Given url 'https://reqres.in/api/users/2'
    And method GET
    Then status 200
    Then print response
    And match response == {"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https:\/\/reqres.in\/img\/faces\/2-image.jpg"},"support":{"url":"https:\/\/reqres.in\/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}
    And match response.data.id == 2
    And match response.data.last_name != null
    #response da olmayan yeni bir değer eklemek istediğimizde
    * def job_code = response.data.job_code
    And match job_code == null