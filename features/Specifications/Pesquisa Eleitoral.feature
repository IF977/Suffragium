Feature: voting intention
    As a user
    I want to see informative graphics with the total number of votes each candidate has.
    In order to keep up with my candidate´s voting intentions.    
        
Background: Start from the user page
   Given I am logged in
   And I am on the index page
   When I press "Pesquisa eleitoral" button
   Then I should go to grafico page
@javascript            
Scenario: Successful seeing the graph for candidates
   When I press "Pesquisa eleitoral" button
   Then I should see a Statistical Graph named "Intenção de voto"
