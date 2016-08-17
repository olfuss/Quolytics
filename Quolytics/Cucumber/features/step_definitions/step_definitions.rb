require 'selenium-webdriver'
require 'rubygems'

driver = Selenium::WebDriver.for :firefox


Given(/^the user opens a browser$/) do
  driver = Selenium::WebDriver.for :firefox
end

Given(/^the user navigates a browser to Quolytics$/) do
  driver.navigate.to"https://devwebtest.dev.local/Quolytics/Account/Login/"
end

Given(/^logs in$/) do
  element = driver.find_element(:id, 'UserName').send_keys"olfuss.ratatosksson"
  element = driver.find_element(:id, 'Password').send_keys"Odinsson1!"
  element = driver.find_element(:class, 'btn-default').click
end

Given(/^clicks the About navigation button$/) do
  element = driver.find_element(:class, 'fa-info-circle').click
end

Then(/^they will be directed to the About page$/) do
  element = driver.find_element(:class, 'body-content').displayed?
end

Given(/^clicks the Admin navigation button$/) do
  element = driver.find_element(:class, 'fa-users').click
end

Then(/^they will be directed to the Admin page$/) do
  element = driver.find_element(:class, 'body-content').displayed?
end

Given(/^clicks the Contact navigation button$/) do
    element = driver.find_element(:class, 'fa-envelope-o').click
end

Then(/^they will be directed to the Contact page$/) do
    element = driver.find_element(:class, 'body-content').displayed?
end

Given(/^clicks the Downloads navigation button$/) do
      element = driver.find_element(:class, 'fa-download').click
end

Then(/^they will be directed to the Downloads page$/) do
    element = driver.find_element(:class, 'k-i-refresh').displayed?
end

Then(/^the homepage will display the downloads window$/) do
  element = driver.find_element(:id, 'DownloadGrid').displayed?
end

Then(/^the homepage will display the volume window$/) do
    element = driver.find_element(:id, 'QuoteVolumeChart').displayed?
end

Given(/^clicks the Log off button$/) do
      element = driver.find_element(:class, 'fa-sign-out').click
      sleep(2)
end

Then(/^they will be logged out of Quolytics$/) do
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