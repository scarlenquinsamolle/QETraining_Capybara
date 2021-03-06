When(/^I open roboform page$/) do
  visit ('')
end


When(/^I fill in the form$/) do |input_values|
 @array_input_value = input_values.rows_hash
 @array_input_value.each_pair do |label, value|
  
  label_found = page.find('td', :text => label)
  if (label == "Home Phone Number"|| label == "Company Phone" || label == "Fax Number")
    phone_inputs = get_phone_number_inputs label_found
    fill_phone_number(phone_inputs, value)
  else
    label_found.find('input').set value
  end
  
 end
end


When(/^I select values to complete the form$/) do |select_values|
 @array_select_value = select_values.rows_hash
 page.select(@array_select_value['State'], :from => '14adrstate')
  page.select(@array_select_value['Shipping Method'], :from => 'ship_methd')
  page.select(@array_select_value['Payment Method'], :from => '40cc__type')
  page.select(@array_select_value['Account Type'], :from  => 'shopr_type')
 
end


When(/^I click on reset button$/) do
  page.find(:xpath, '//tbody/tr[7]/td/input').click
end

Then(/^All fields should reset values to null$/) do |labels_inputs|
  @array_labels_inputs = labels_inputs.rows
  for label in @array_labels_inputs do 

    value = page.find('td', :text => label[0])

    if (label[0] == "Home Phone Number"|| label[0] == "Company Phone" || label[0] == "Fax Number")
      inputs_array = get_phone_number_inputs value
      for input in inputs_array do
        current_value = input.text
        expect(current_value).to eq("")
      end
    else
      current_value = value.find(:xpath, './/following-sibling::input[1]').text
      expect(current_value).to eq("")
    end
  end
end


