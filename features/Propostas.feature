Feature: Choosing a candidate
As a user
I want to evaluate the proposals regardless of the candidate
In order to keep away from political party.


Background: Given I am on my perfil’s page
  	    When I click on the “Quem devo votar?” link
            Then I should see "Formulario de propostas"

Scenario: view candidate’s proposal.
	When I see “Formulario de propostas”
	Then I should see a text "Educação"
	And I should see a text "Saude"
	And I should see a text "Segurança"
	And I fill the form with my preferences
	Then I should see the candidate most fill my preferences
