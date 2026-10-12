Feature: Retrieve users

    Scenario: Get a user by id
        Given url 'https://jsonplaceholder.typicode.com/users/1'
        When method get
        Then status 200