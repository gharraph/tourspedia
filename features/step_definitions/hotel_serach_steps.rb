Given /^I am authenticated user/ do 
	step "I am logged in"
end

When /^I enter my prefered city$/ do
	fill_in "Prefered City", :with => "Cairo"
	@matching_hotels = ['hotel1', 'hotel2', 'hotel3']
	@non_matching_hotels = ['hotel4', 'hotel5']
end

When /^click search button$/ do
	click_button "Search"
end

     		
Then /^I should only see search results mtching hotels in this city$/ do
	@matching_hotels.each do |hotel|
		page.should have_content hotel
	end

	@non_matching_hotels. each do |hotel|
		page.should have_no_content hotel
	end
end

