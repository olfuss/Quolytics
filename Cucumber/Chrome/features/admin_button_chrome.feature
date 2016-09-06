Feature: Admin Navigation Button

	Scenario: the user clicks the Admin navigation button
		Given the user navigates a browser to Quolytics
		And logs in
		And clicks the Admin navigation button
		Then they will be directed to the Admin page
		Then they click the Diagnostics button
		Then they click the Purgatory button
		Then they click the Subscribers button
		And they click the Users button

