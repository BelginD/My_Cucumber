Feature: Fee Functionality

  Background:
    Given Navigate to Campus
    When Enter username and password
    And Click on Login Button
    Then User should login successfully
    Given Navigate to Fee Page

  Scenario: Create A Fee
    And Click on add button
    And Fill the add fee form
      | XYZ Fee |
      | xyz13   |
      | xyz     |
      | 123     |
    When Click on save button
    Then Success message should be displayed

  Scenario: Delete A Fee
    Given Search for the Fee
      | XYZ Fee |
      | xyz13   |
      | 123     |
    And Delete Fee
    Then Success message should be displayed