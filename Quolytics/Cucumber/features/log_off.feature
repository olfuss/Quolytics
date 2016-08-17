Feature: Log off

	Scenario: the user logs off 
		Given the user opens a browser
		Given the user navigates a browser to Quolytics
		And logs in
		And clicks the Log off button
		Then they will be logged out of Quolytics
		Then clean up
