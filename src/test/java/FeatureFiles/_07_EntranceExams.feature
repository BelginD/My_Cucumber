Feature: Entrance Exams Functionality

  Background:
    Given Navigate to Campus
    When Enter username and password
    And Click on Login Button
    Then User should login successfully

  Scenario Outline: Create an Entrance Exam
    Given Go to Entrance Exams Page
    And Click on add button
    And Fill the Create Exam form
      | <Exam Name> |
    And Create a description
      | <Description> |
    And Create a note
      | <Note> |
    When Click on save button
    Then Success message should be displayed

    Examples:
      | Exam Name | Description   | Note                          |
      | Exam 11   | the best      | We are coming soon            |
#      | Exam 12   | rocks         | Get prepared                  |
#      | Exam 13   | fun           | We are having fun             |
#      | Exam 14   | don't give up | We can do it                  |
#      | Exam 15   | ready         | But we are better than anyone |


#  TODO Add delete entrance exams scenario for all created exams