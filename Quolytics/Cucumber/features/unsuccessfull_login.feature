Feature: Un-successful Login

	Scenario: the user un-successfully logs in
		Given the user opens a browser
		Given the user navigates a browser to Quolytics
		Then enters incorrect credentials
		And logs in
		Then the user will be redirected to the login screen again 
		And an invalid attempt message will be displayed
		Then clean up