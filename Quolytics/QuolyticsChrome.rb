require 'rubygems'
require 'selenium-webdriver'

driver1 = Selenium::WebDriver.for :chrome
driver1.navigate.to "https://devwebtest.dev.local/Quolytics/help"