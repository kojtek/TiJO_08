Feature: Text filter

  Scenario: Search using a search field
    When I browse to the "/"
    When I enter "914" into "input.search" field
    Then the css element "td:nth-of-type(5)" should contain the text "+1 (914) 451-3055"
    Then I should see "warner.bridges@undefined.biz" in "email" column in row "1" of "student.table" table

    When I enter "War" into "input.search" field
    Then the css element "td:nth-of-type(1)" should contain the text "Warner"
    Then I should see "Warner" in "firstName" column in row "1" of "student.table" table


  Scenario: Search case
    When I browse to the "/"
    When I enter "app" into "input.search" field
    Then the css element "td:nth-of-type(1)" should contain the text "Knapp"
    Then I should see "Knapp" in "firstName" column in row "1" of "student.table" table

    When I enter "knapp.hardy" into "input.search" field
    Then the css element "td:nth-of-type(5)" should contain the text "+1 (978) 554-2635"
    Then I should see "Hardy" in "lastName" column in row "1" of "student.table" table


  Scenario: Age search
    When I browse to the "/"
    When I enter "1" into "input.age" field
    Then I should see "Bridges" and "Rose" in "lastName"


  Scenario: Phone search case
    When I browse to the "/"
    When I enter "7" into "input.phone" field
    Then the css element "td:nth-of-type(2)" should contain the text "Spencer"
    Then I should see "Rose" in "lastName" column in row "4" of "student.table" table

    When I enter "12" into "input.phone" field
    Then the css element "td:nth-of-type(2)" should contain the text "Burnett"
    Then I should see "Gordon" in "lastName" column in row "2" of "student.table" table