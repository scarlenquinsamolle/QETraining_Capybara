@automation_navigate
Feature: Navigate through menus
Backgroup: Open Automation Practice screen
Given I opened Automation Practice screen
Scenario: Validate content through menus
When Automation Practice screen is opened
Then I should see the following menus:
|WOMEN|
|DRESSES|
|T-SHIRTS|

When I clicked on "WOMEN" menu
Then I should see navigation menu with "Women" option
	And I should see "WOMEN" menu in the left side
	
When I clicked on "DRESSES" menu
Then I should see navigation menu with "Dresses" option
	And I should see "DRESSES" menu in the left side

When I clicked on "T-SHIRTS" menu
Then I should see navigation menu with "T-shirts" option
	

