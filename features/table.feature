Feature: Passing interview
  @baramik
  Scenario: Checking check-box when candidate passed
	Given I'm on main page
	When I check check-box near candidates name
	And I reload page
	Then I should see check-box checked near passed candidate
