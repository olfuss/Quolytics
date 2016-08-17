Feature: Downloads Navigation Button

	Scenario: the user clicks the Downloads navigation button
		Given the user opens a browser
		Given the user navigates a browser to Quolytics
		And logs in
		And clicks the Downloads navigation button
		Then they will be directed to the Downloads page
		Then clean up
