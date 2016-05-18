Feature: Text filter

  Scenario: Search using a search field
    When I browse to the "/"
    When I enter "914" into "input.search" field
    Then the css element "td:nth-of-type(5)" should contain the text "+1 (914) 451-3055"
    Then I should see "warner.bridges@undefined.biz" in "email" column in row "1" of "student.table" table
