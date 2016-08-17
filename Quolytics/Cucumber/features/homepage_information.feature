Feature: Homepage Displays Correct Information

	Scenario: the homepage displays the correct information windows
		Given the user opens a browser
		Given the user navigates a browser to Quolytics
		And logs in
		Then the homepage will display the downloads window 
		And the homepage will display the volume window
		Then clean up
