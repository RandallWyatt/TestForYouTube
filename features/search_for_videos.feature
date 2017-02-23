Feature: search for videos

  Scenario: As a youtube user I want to search for videos
    Given I go to the YouTube Website
    When I search for a video
    And I select the video I want
    Then I will be able to watch the video