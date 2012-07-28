Feature: Showtime Description

  So that I can find movies that fit my schedule
  As a movie goer
  I want to see accurate and concise showtime

  Scenario: Show minutes for times not ending with 00
    Given a movie
    When I set the showtime to "2007-10-10" at "2:15pm"
    Then the Showtime description should be "October 10, 2007 (2:15pm)"

  Scenario: Hide minutes for times ending with 00
    Given a movie
    When I set the showtime to "2007-10-10" at "2:00pm"
    Then the Showtime description should be "October 10, 2007 (2pm)"
