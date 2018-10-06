Feature: add new movies
     
  As a movie buff
  So that I can share movies with other movie buffs
  I want to be able to enter new movie information

Background: on the home page

  Given I am on the home page
 
Scenario: Add a new movie
  When go to the new movie page
  And I fill in "Title" with "3 Idiots"
  And I press "Save Changes"
  Then I should be on the home page
  And I should see "3 Idiots"

