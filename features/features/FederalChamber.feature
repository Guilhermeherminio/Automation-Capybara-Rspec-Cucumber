@federal_chamber
Feature: Federal Chamber Smoke
  Visit the Federal Chamber

  @matching_deputies_with_success
  Scenario Outline: get all deputies and show the number of existing deputies with success
  Given the user gets all deputies from api
  And the automation visits the parliamentary bench site
  And the automation gets the amout of deputies
  Then the automation checks if the both deputies information is matching

  @matching_deputies_without_success
  Scenario Outline: get all deputies and show the number of existing deputies without success
  Given the user gets all deputies from api
  And the automation visits the parliamentary bench site
  And the automation gets the amout of deputies
  Then the automation checks if the both deputies information is not matching

  @matching_political_party
  Scenario: get all amount of political party and show the number of existing political party with success
  Given the user gets all political party from api
  And the automation visits the parliamentary bench site
  And the automation gets the amout of political party
  Then the automation checks if the both political party information is matching
