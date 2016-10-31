Feature: Historical voting
As a user
I want to keep save the candidates I´ve voted
In order to keep watching him if he´s elected.

@javascript
Scenario: view historical voting.
	Given I am on my perfil’s page
  	When I click on the “Meus votos” link
    Then I should see "Histórico de votos"
    