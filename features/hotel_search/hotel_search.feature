Feature: Hotel Search
	AS a register user for the website
	I want to be able to search hotels all over the globe
	So I can book the best hotel option

		Background:
			Given I am logged in

		Scenario: User can search hotels by specifying prefered city as a search criterion
     		When I enter my prefered city
     		And click search button
     		Then I should only see search results mtching hotels in this city
	


