When(/^Automation Practice screen is opened$/) do
  visit("/")
  page.driver.browser.manage.window.maximize
end

When(/^I leave search text box empty$/) do
  page.find('#searchbox').find('.btn').click
end

Then(/^I should see "(.*?)" message$/) do |error_message|
	# print page.all('h1')

  expect((page.find('p.alert.alert-warning')).text).to include(error_message)
end

When(/^I search "(.*?)"$/) do |phrase_to_search|
	page.find_by_id('search_query_top').set phrase_to_search
  page.find('#searchbox').find('.btn').click
end

When(/^I select List View$/) do
  page.find('i.icon-th-list').click
end


Then(/^I should see "(.*?)"$/) do |product_name|
  expect(page.find('a.product-name').text).to eql(product_name)
end

Then(/^"(.*?)" price$/) do |price|
  pending # Write code here that turns the phrase above into concrete actions
end


