Feature: Filling Proposals
As a candidate
I want to write my proposals for each topic
In order to show people my ideas.

Background: Given I am on my perfil’s page
  	    When I click on the “Quem devo votar?” link
        Then I should see "Formulario de propostas"
@javascript
Scenario: creating candidate’s proposal.
	When I see “Formulario de propostas”
	Then I should write a text "Educação"
	And I should write a text "Saude"
	And I should write a text "Segurança"
	And I press to save my proposals
	Then I should see my proposals
	
@javascript
Scenario: editing candidate’s proposal.
	When I see “Formulario de propostas”
	Then I should write a text "Educação"
	And I should write a text "Saude"
	And I should write a text "Segurança"
	And I press to save my proposals
	Then I should see my proposals