Feature: URL from configuration

    Scenario: Get a user using configured base URL
        Given url baseUrl + '/users/1'
        When method get
        Then status 200
        And match response.id == 1