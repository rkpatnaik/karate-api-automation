Feature: URL from background

    Background:
        * url baseUrl

    Scenario: Get a user using Background URL
        Given path 'users/1'
        When method get
        Then status 200
        And match response.id == 1