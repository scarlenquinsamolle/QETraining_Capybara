When(/^Automation Practice screen is opened$/) do
  visit("/")
  page.driver.browser.manage.window.maximize
end

Then(/^I should see the following menus:$/) do |menu_items|
	array_menu_items = menu_items.rows  
	expect(compare_value_with_ui(array_menu_items)).to be true
end

Given(/^I clicked on "(.*?)" menu$/) do |menu|
  page.find_by_id('block_top_menu').find('li', :text => menu).click
end

Then(/^I should see navigation menu with "(.*?)" option$/) do |option|
  expect(page.find('.breadcrumb').text).to include option
end

Then(/^I should see "([^"]*)" menu in the left side$/) do |left_menu|
	left_menu_option = page.find('h2').text
  	expect(left_menu_option).to eql(left_menu)
end
