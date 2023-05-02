Feature: Country Functionality

  Background:
    Given Navigate to Campus
    When Enter username and password
    And Click on Login Button
    Then User should login successfully
    And Navigate to Country Page

  @SmokeTest
  Scenario: Create Country
#    Given Navigate to Campus
#    When Enter username and password
#    And Click on Login Button
#    Then User should login successfully
#    And Navigate to Country Page
    When Create a new country
    Then Success message should be displayed

#    Add edit country scenario
#  Scenario: Edit Country
#    When Edit country
#    Then Success message should be displayed

  @Regression
  Scenario: Delete Country
#    Given Navigate to Campus
#    When Enter username and password
#    And Click on Login Button
#    Then User should login successfully
#    And Navigate to Country Page
    When Delete country
    Then Success message should be displayed

  Scenario:
    And Click on add button
    When Enter country name as "XYZ1" and code as "xyz1"
    And Click on save button
    Then Success message should be displayed

  Scenario: Delete Country
    When Delete country
    Then Success message should be displayed

