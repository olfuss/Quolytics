Feature: Successful Login

	Scenario: the user successfully logs in
		Given the user opens a browser
		Given the user navigates a browser to Quolytics
		And logs in 
		Then the user will be directed to the quolytics dashboard
		Then clean up
