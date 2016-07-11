def get_menu_item
    menu_item_array = Array.new
    page.find_by_id('block_top_menu').all('li').each do |item|
      menu_item_array.push item.text
    end
    return menu_item_array
end 

def compare_value_with_ui(array_menu_items)
	items = get_menu_item()
	exist = false
	items.each_with_index do |item, index|
		item == array_menu_items[index+1]
		exist = true
	end
	return exist

end
