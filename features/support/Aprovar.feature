Feature: approve proposals
  As a System Voter
  I want to enjoy the proposals.
  To follow the proposals more tanned by all voters.
  
  Background: Given I am on my perfil’s page
    When I click on the “Quem devo votar?” link
  	    Then I should see "Formulario de propostas"
        
Scenario: Comentar as propostas
  When I press "Formulário de propostas"
  Then I should see a text "Educação"
  And I should see a text "Saude"
  And I should see a text "Segurança"
  When I click on the “Educação” link
  And I should see an option to approve the proposal
  Then I Click on to approve must be absent button not to enjoy several times