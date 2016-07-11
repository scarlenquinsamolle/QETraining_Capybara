@search_option
Feature: Navigate through menus
Backgroup: Open Automation Practice screen
Given Automation Practice screen is opened
Scenario: Validate content through menus
Given Automation Practice screen is opened
When I leave search text box empty 
Then I should see "Please enter a search keyword" message 

When I search "WORDS"
Then I should see "No results were found for your search" message

When I search "printed dress"
	And I select List View
Then I should see "Printed Summer Dress" 
	And "$28.98" price




	

