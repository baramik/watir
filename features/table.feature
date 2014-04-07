Feature: Fotomag testing
  Scenario: Checking check-box 'v_useful_sellout'
	Given I am on the fotomag page
	When I check check-box near v_useful_sellout
	And I reload page
	Then I should see check-box checked near v_useful_sellout
