Feature: Retrieve users

    Scenario: Get a user by id
        Given url 'https://jsonplaceholder.typicode.com/users/1'
        When method get
        Then status 200
        And match response.id == 1
        And match response.username == 'Bret'
        And match response.email == '#string'
    
    Scenario: Get all users
        Given url 'https://jsonplaceholder.typicode.com/users'
        When method get
        Then status 200
        And match response == '#[10]'
        And match each response contains
            """
            {
                id: '#number',
                name: '#string',
                username: '#string',
                email: '#string'
            }
            """

    Scenario: Get a non-existent user
        Given url 'https://jsonplaceholder.typicode.com/users/999'
        When method get
        Then status 404
        And match response == {}