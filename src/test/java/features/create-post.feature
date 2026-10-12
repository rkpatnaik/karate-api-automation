Feature: Create a post

    Background:
        * url baseUrl

    Scenario: Create a post successfully
        Given path 'posts'
        And request
            """
            {
                "title": "Karate API Testing",
                "body": "Learning POST requests with Karate",
                "userId": 1
            }
            """
        When method post
        Then status 201
        And match response.title == 'Karate API Testing'
        And match response.body == 'Learning POST requests with Karate'
        And match response.userId == 1
        And match response.id == '#number'