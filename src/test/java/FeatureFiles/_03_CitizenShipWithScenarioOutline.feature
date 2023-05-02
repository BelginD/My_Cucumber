Feature: Citizenship Functionality

  Background:
    Given Navigate to Campus
    When Enter username and password
    And Click on Login Button
    Then User should login successfully
    Given Navigate to Citizenship page

  Scenario Outline: Create a Citizenship
    And Click on add button
    Then Enter citizenship name as "<CitizenshipName>" and citizenship short name as "<CitizenshipShortName>"
    When Click on save button
    Then Success message should be displayed
    Examples:
      | CitizenshipName | CitizenshipShortName |
      | XYZ1            | xyz1                 |
      | XYZ2            | xyz2                 |
      | XYZ3            | xyz3                 |
      | XYZ4            | xyz4                 |

    Scenario Outline: Delete Citizenship
      And Search for citizenship with name as "<CitizenshipName>" and short name as "<CitizenshipShortName>"
      And Delete citizenship
      Then Success message should be displayed
      Examples:
        | CitizenshipName | CitizenshipShortName |
        | XYZ1            | xyz1                 |
        | XYZ2            | xyz2                 |
        | XYZ3            | xyz3                 |
        | XYZ4            | xyz4                 |