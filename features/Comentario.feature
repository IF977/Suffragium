Feature: Commenting on proposals
  As a System Voter
  I want to comment on candidates' proposals
  To state my opinion
  
  Background: Given I am on my perfil’s page
    When I click on the “Quem devo votar?” link
  	    Then I should see "Formulario de propostas"
        
Scenario: Comentar as propostas
  When I press "Formulário de propostas"
  Then I should see a text "Educação"
  And I should see a text "Saude"
  And I should see a text "Segurança"
  When I click on the “Educação” link
  Then I should see the proposal and be able to comment on a text box.
