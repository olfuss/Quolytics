Feature: About Navigation Button

	Scenario: the user clicks the About navigation button
		Given the user opens a browser
		Given the user navigates a browser to Quolytics
		And logs in
		And clicks the About navigation button
		Then they will be directed to the About page
		Then clean up
