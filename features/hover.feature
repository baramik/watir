Feature: Fotomag categoty hovering
  Scenario: Hovering category 'nb'
    Given I am on the fotomag page
    When I hover nb tab
    And I click link
    Then I should be on notebooks page
