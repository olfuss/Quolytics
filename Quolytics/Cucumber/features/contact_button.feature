Feature: Contact Navigation Button

	Scenario: the user clicks the Contact navigation button
		Given the user opens a browser
		Given the user navigates a browser to Quolytics
		And logs in
		And clicks the Contact navigation button
		Then they will be directed to the Contact page
		Then clean up
