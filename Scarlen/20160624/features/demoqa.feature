Feature: Demo QA
Scenario: Validate UI components in main page
When demoQA is loaded
Then I should see the following menu items:
|Home|
|About us|
|Services|
|Demo|
|Blog|
|Contact|
	And I should see "Home" title
	And I should see the following tabs:
	|Tab 1|
	|Tab 2|
	|Tab 3|
	|Tab 4|
	|Tab 5|

	And I should see the following vertical menus:
	|Resgistration|
	|interaction|
	|Widget|
	|Frames and Windows|

	And I should see the followin options in Registration menu:
	|Registration|
	And I should see the followin options in interaction menu:
	|Draggable|
	|Droppable|
	|Resizable|
	|Selectable|
	|Sortable|
	And I should see the followin options in Widget menu:
	|Accordion|
	|Autocomplete|
	|Datepicker|
	|Menu|
	|Slider|
	|Tabs|
	|Tooltip|

	And I should see the followin options in Frames and Windows menu:
	|Frames and Windows|
	
