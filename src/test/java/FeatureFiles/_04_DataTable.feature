Feature: Data Table Example

  Scenario:
    Given Go to the WebPage
    And Fill the form with valid data
      | John             |
      | Snow             |
      | 2356 Spring Ave. |
      | 1234567890       |
    Then Save the form

  Scenario:
    Given Go to the WebPage
    And Fill the form with valid data
      | John             |
      | Snow             |
      | 2356 Spring Ave. |
      | 1234567890       |
    And Enter valid information
      | Name      | John             |
      | Last Name | Snow             |
      | Address   | 2356 Spring Ave. |
      | Phone     | 1234567890       |
    Then Save the form

#   Scenario outline runs the entire scenario for each set of data
#   Data table sends the entire data to only one step at the same time
#   and runs the scenario once
