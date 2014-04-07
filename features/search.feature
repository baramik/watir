Feature: Search
  In order to learn more
  As an information seeker
  I want to find more information

  Scenario Outline: Find what I'm looking for
    Given I am on the Google search page
    When I search for something <query>
    And I click button with name <button_name>
    Then I should see something <text>

  Examples:
    |button_name| query             | text   |
    |btnG       | "cucumber github" | Github |
    |btnG       | "QA"              | QA     |
      
 