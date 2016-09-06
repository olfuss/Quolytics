require 'selenium-webdriver'
require 'rspec'

driver = Selenium::WebDriver.for :chrome

Given(/^the user navigates a browser to Quolytics$/) do
  driver.navigate.to"https://devwebtest.dev.local/Quolytics/Account/Login/"
end

Given(/^logs in$/) do
  element = driver.find_element(:id, 'UserName').send_keys"olfuss.ratatosksson"
  element = driver.find_element(:id, 'Password').send_keys"Odinsson101010"
  element = driver.find_element(:class, 'btn-default').click
end

Given(/^clicks the About navigation button$/) do
  element = driver.find_element(:class, 'fa-info-circle').click
end

Then(/^they will be directed to the About page$/) do
  expect(driver.title).to eq("Quolytics 2.0 © 2016 - Quomation Insurnace Services, All Rights Reserved")
end

Given(/^clicks the Admin navigation button$/) do
  element = driver.find_element(:class, 'fa-users').click
end

Then(/^they will be directed to the Admin page$/) do
  expect(driver.title).to eq("Administration - Quolytics 2.0")
end

Then(/^they click the Diagnostics button$/) do
  element = driver.find_element(:id, 'cmdDiagnostics').click
  element = driver.find_element(:link_text, 'NLog').click
  element = driver.find_element(:link_text, 'Elmah').click
end

Then(/^they click the Purgatory button$/) do
  element = driver.find_element(:id, 'cmdPurgatory').click
end

Then(/^they click the Subscribers button$/) do
  element = driver.find_element(:id, 'cmdSubscribers').click
end

Then(/^they click the Users button$/) do
  element = driver.find_element(:id, 'cmdUsers').click
end

Given(/^clicks the Contact navigation button$/) do
    element = driver.find_element(:class, 'fa-envelope-o').click
end

Then(/^they will be directed to the Contact page$/) do
  expect(driver.title).to eq("Quolytics 2.0 © 2016 - Quomation Insurnace Services, All Rights Reserved")
end

Given(/^clicks the Downloads navigation button$/) do
      element = driver.find_element(:class, 'fa-download').click
end

Then(/^they will be directed to the Downloads page$/) do
expect(driver.title).to eq("Download Files - Quolytics 2.0")
end

Then(/^the homepage will display the downloads window$/) do
  element = driver.find_element(:id, 'DownloadGrid').displayed?
end

Then(/^the homepage will display the volume window$/) do
    element = driver.find_element(:id, 'QuoteVolumeChart').displayed?
end

Given(/^clicks the Log off button$/) do
      element = driver.find_element(:class, 'fa-sign-out').click
end

And(/^clicks the User Profile button$/) do
	element = driver.find_element(:class, 'fa-user').click
end

Then(/^they will be directed to the User Profile page$/) do
  expect(driver.title).to eq("- Quolytics 2.0")
end

Then(/^they will be logged out of Quolytics$/) do
	  sleep(3)
      element = driver.find_element(:id, 'UserName').displayed?
end

Then(/^the user will be directed to the quolytics dashboard$/) do
  element = driver.find_element(:id, 'DownloadGrid').displayed?
  element = driver.find_element(:id, 'QuoteVolumeChart').displayed?
end

Then(/^enters incorrect credentials$/) do
  element = driver.find_element(:id, 'UserName').send_keys"WrOnG"
  element = driver.find_element(:id, 'Password').send_keys"WaY"
  element = driver.find_element(:class, 'btn-default').click
end

Then(/^the user will be redirected to the login screen again$/) do
        element = driver.find_element(:id, 'UserName').displayed?
end

Then(/^an invalid attempt message will be displayed$/) do
        element = driver.find_element(:class, 'text-danger').displayed?
end

Then(/^clean up$/) do
  driver.quit();
end


